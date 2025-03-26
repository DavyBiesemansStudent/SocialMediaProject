package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Controller
public class AppUserController {

    @Autowired
    private AppUserRepository appUserRepository;

    @GetMapping({"/userprofile/{id}", "/userprofile"})
    public String userProfile(Model model, @PathVariable(required = false) Integer id) {

        if (id == null) {
            return "userprofile";
        }

        // Optional because possible null value. this handles it cleanly (no NullPointerException)
        Optional<AppUser> appUserDB = appUserRepository.findById(id);
        if (appUserDB.isPresent()) {
            AppUser user = appUserDB.get();
            model.addAttribute("appUser", user);

            // Convert Collection<Post> to List<Post> and reverse it (most recent first)
            List<Post> userPosts = new ArrayList<>(user.getPost());
            Collections.reverse(userPosts);

            model.addAttribute("userPosts", userPosts);
        }

        return "userprofile";
    }

    @GetMapping("/userlist")
    public String userList(Model model,
                           @RequestParam (required = false)String keyword) {
        model.addAttribute("pageTitle", "Profile list");

        final Iterable<AppUser> appUsers = appUserRepository.findByKeyword(keyword);
        model.addAttribute("appUsers", appUsers);
        return "userlist";
    }

    @GetMapping("/likedposts")
    public String likedPosts(Model model,
                             @ModelAttribute("CurUser") AppUser CurUser,
                             Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }

        //arraylist because you're converting from a collection to a list
        List<Post> likedPosts = new ArrayList<>(CurUser.getLikedposts());
        Collections.reverse(likedPosts);

        model.addAttribute("likedPosts",likedPosts);

        return "likedposts";
    }
}
