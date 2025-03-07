package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.PostRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Optional;

@Controller
public class PostEditController {

    @Autowired
    private PostRepository postRepository;

    @ModelAttribute("post")
    public Post findPost(@PathVariable(required = false) Integer id){
        Optional<Post> post = postRepository.findById(id);

        if(post.isPresent()){
            return post.get();
        }
        return null;
    }

    @GetMapping("/postedit/{id}")
    public String editPostGet(Model model, @PathVariable Integer id){
        return "postedit";
    }

    @PostMapping("/postedit/{id}")
    public String editPost(@PathVariable(required = false) Integer id, Model model, @Valid Post post, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "postedit";
        }
        postRepository.save(post);
        return "redirect:/postdetails/" + id;
    }


}
