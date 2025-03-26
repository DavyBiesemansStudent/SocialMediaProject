package be.thomasmore.projectsocialmedia.controlleradvice;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.security.Principal;

@ControllerAdvice
public class GlobalControllerAdvice {

    @Autowired
    private AppUserRepository appUserRepository;

    @ModelAttribute
    public void addUserToModel(Model model, Principal principal) {
        if (principal != null) {
            String username = principal.getName();
            AppUser curUser = appUserRepository.findByUsername(username);
            if (curUser != null) {
                model.addAttribute("CurUser", curUser);
            }
        }
    }

}

