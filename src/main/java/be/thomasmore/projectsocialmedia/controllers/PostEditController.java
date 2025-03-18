package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import be.thomasmore.projectsocialmedia.repositories.PostRepository;
import be.thomasmore.projectsocialmedia.repositories.TagRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;
import java.time.LocalDate;
import java.util.Optional;

@Controller
public class PostEditController {

    @Autowired
    private PostRepository postRepository;

    @Autowired
    private TagRepository tagRepository;

    @Autowired
    private AppUserRepository appUserRepository;

    @ModelAttribute("post")
    public Post findPost(@PathVariable(required = false) Integer id){
        if (id == null) {
            return new Post();
        }

        Optional<Post> post = postRepository.findById(id);

        if(post.isPresent()){
            return post.get();
        }
        return null;
    }

    @GetMapping("/postedit/{id}")
    public String editPost(Principal principal, @Valid Post post, @PathVariable(required = false) Integer id){
        if (principal == null) {
            return "redirect:/user/login";
        }
        if (!post.getPoster().getUsername().equals(principal.getName())) {
            return "redirect:/postdetails/" + id;
        }
        return "postedit";
    }

    @PostMapping("/postedit/{id}")
    public String editPost(@PathVariable(required = false) Integer id, @Valid Post post, BindingResult bindingResult){

        if(bindingResult.hasErrors()){
            return "postedit";
        }

        postRepository.save(post);
        return "redirect:/postdetails/" + id;
    }

    @GetMapping("/postcreate")
    public String createPost(Model model, Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }
        model.addAttribute("tags", tagRepository.findAll());
        return "postcreate";
    }

    @PostMapping("/postcreate")
    public String createPost(@Valid Post post, BindingResult bindingResult, Principal principal, Model model) {

        if (bindingResult.hasErrors()) {
            model.addAttribute("tags", tagRepository.findAll());
            return "postcreate";
        }

        AppUser user = appUserRepository.findByUsername(principal.getName());

        post.setPoster(user);
        post.setDate(LocalDate.now());
        postRepository.save(post);

        return "redirect:/postdetails/" + post.getId();
    }


}
