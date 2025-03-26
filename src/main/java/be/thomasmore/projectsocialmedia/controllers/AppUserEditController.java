package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
public class AppUserEditController {

    @Autowired
    private AppUserRepository appUserRepository;

    //Get = recieve data from server
    @GetMapping("/settings")
    public String settings(Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }
        return "settings";
    }


    //Post = send data to server
    @PostMapping("/settings")
    public String updateSettings(@ModelAttribute("CurUser") @Valid AppUser CurUser,
                                 Principal principal,
                                 BindingResult bindingResult) {
        if (principal == null) {
            return "redirect:/user/login";
        }

        //@Valid checks constraints and BindingResult captures and handles the errors
        if (bindingResult.hasErrors()) {
            return "settings";
        }

        appUserRepository.save(CurUser);
        return "redirect:/userprofile/" + CurUser.getId();
    }
}
