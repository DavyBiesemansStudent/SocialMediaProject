package be.thomasmore.projectsocialmedia.controlleradvice;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class GlobalControllerAdvice {

    @Autowired
    private AppUserRepository appUserRepository;

    @ModelAttribute
    public void addUserIdToModel(Model model) {
        //no principal because if not logged in then error because principal would be null
        //contextholder get's the entire object (username, authority, permissions) when user is not logged in return null
        //principal get the current users identity (username)
        String currentUsername = SecurityContextHolder.getContext().getAuthentication().getName();
        AppUser user = appUserRepository.findByUsername(currentUsername);
        if (user != null) {
            model.addAttribute("user", user);
        }
    }
}

