package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
public class AppUserEditController {

    @Autowired
    private AppUserRepository appUserRepository;

    @GetMapping("/settings")
    public String settings(Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }
        return "settings";
    }


    @PostMapping("/settings")
    public String updateSettings(@ModelAttribute("CurUser") AppUser CurUser,
                                 @RequestParam String bio,
                                 @RequestParam String profilePictureUrl,
                                 Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }

        //set because the user (principal) is not the same as AppUser and thus not automatically bound
        //AppUser is linked to User
        CurUser.setBio(bio);
        CurUser.setProfilePictureUrl(profilePictureUrl);

        appUserRepository.save(CurUser);
        return "redirect:/userprofile/" + CurUser.getId();
    }
}
