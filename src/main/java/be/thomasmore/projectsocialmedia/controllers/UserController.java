package be.thomasmore.projectsocialmedia.controllers;
import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    AppUserRepository appUserRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JdbcUserDetailsManager userDetailsManager;

    @GetMapping("/login")
    public String login(Principal principal) {
        //redirect if logged in user tries to go to login page
        if (principal != null) {
            return "redirect:/feed";
        }
        return "user/login";
    }

    @GetMapping("/logout")
    public String logout(Principal principal) {
        if (principal == null) {
            return "redirect:/feed";
        }
        return "user/logout";
    }

    @GetMapping("/register")
    public String register(Principal principal) {
        if (principal != null) {
            return "redirect:/feed";
        }
        return "user/register";
    }

    @PostMapping("/register")
    public String registerPost(Principal principal,
                               HttpServletRequest request,
                               @RequestParam String username,
                               @RequestParam String password,
                               @RequestParam String name,
                               @RequestParam String profilePictureUrl,
                               @RequestParam String bio,
                               Model model) throws ServletException {
        if (principal != null) return "redirect:/feed";
        if (userDetailsManager.userExists(username)){
            model.addAttribute("error", "Username is already taken");
            return "user/register";
        }

        UserDetails user = org.springframework.security.core.userdetails.User
                .withUsername(username) //set username
                .password(passwordEncoder.encode(password)) //encode password
                .roles("USER") //set role
                .build(); //build the object (UserDetails)
        userDetailsManager.createUser(user); //store the user

        AppUser newAppUser = new AppUser();
        newAppUser.setName(name);
        newAppUser.setUsername(username);
        newAppUser.setProfilePictureUrl(profilePictureUrl);
        newAppUser.setBio(bio);
        appUserRepository.save(newAppUser);

        request.login(username, password);

        return "redirect:/feed";
    }
}
