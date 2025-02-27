package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private PostRepository postRepository;

    @GetMapping({"/home","/"})
    public String home(Model model) {

        final Iterable<Post> posts = postRepository.findAll();
        model.addAttribute("posts", posts);

        return "home";
    }

}
