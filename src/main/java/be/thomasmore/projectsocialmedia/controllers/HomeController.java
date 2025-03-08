package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private AppUserRepository appUserRepository;

    @GetMapping({"/home","/"})
    public String home(Model model) {
        String currentUsername = SecurityContextHolder.getContext().getAuthentication().getName();
        AppUser user = appUserRepository.findByUsername(currentUsername);
        if (user != null) {
            model.addAttribute("name", user.getUsername());
            model.addAttribute("bio", user.getBio());
        }
        return "home";
    }
}
