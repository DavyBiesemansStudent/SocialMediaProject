package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import be.thomasmore.projectsocialmedia.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@Controller
public class PostController {

    @Autowired
    private PostRepository postRepository;


    @GetMapping({"/postdetails", "/postdetails/{id}"})
    public String postdetails(Model model, @PathVariable Integer id) {
        if (id == null) {
            return "postdetails";
        }

        Optional<Post> postFromDB = postRepository.findById(id);

        if(postFromDB.isPresent()){
            model.addAttribute("post", postFromDB.get());
        }

        return "postdetails";
    }
}
