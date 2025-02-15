package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@Controller
public class AppUserController {

    @Autowired
    private AppUserRepository appUserRepository;

    @GetMapping({"/userprofile/{id}", "/userprofile"})
    public String userProfile(Model model, @PathVariable(required = false) Integer id) {
        model.addAttribute("pageTitle", "Profile");

        if (id == null) {
            return "userprofile";
        }

        Optional<AppUser> appUserDB = appUserRepository.findById(id);
        if (appUserDB.isPresent()) {
            model.addAttribute("appUser", appUserDB.get());
        }

        return "userprofile";
    }

    @GetMapping("/userlist")
    public String userList(Model model) {
        model.addAttribute("pageTitle", "Profile list");

        final Iterable<AppUser> appUsers = appUserRepository.findAll();
        model.addAttribute("appUsers", appUsers);
        return "userlist";
    }
}
