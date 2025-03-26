package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Post;
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


    @ModelAttribute("post") //Any controller method handling a request will automatically get post in the model
    public Post findPost(@PathVariable(required = false) Integer id){
        if (id == null) {
            return new Post();
        }

        Optional<Post> post = postRepository.findById(id);

        if(post.isPresent()){
            return post.get();      //The returned Post is added to the model under post
        }
        return null;
    }

    @GetMapping("/postedit/{id}")
    public String editPost(Principal principal,
                           Post post, //Equal to @ModelAttribute("post") Post post. not used since there's only one Post object here
                           @PathVariable Integer id){
        if (principal == null) {
            return "redirect:/user/login";
        }
        if (!post.getPoster().getUsername().equals(principal.getName())) {
            return "redirect:/postdetails/" + id;
        }
        return "postedit";
    }

    @PostMapping("/postedit/{id}")
    public String editPost(@PathVariable Integer id,
                           @Valid Post post,
                           BindingResult bindingResult,
                           Principal principal){
        if (principal == null) {
            return "redirect:/user/login";
        }

        if(bindingResult.hasErrors()){
            return "postedit";
        }

        postRepository.save(post);
        return "redirect:/postdetails/" + id;
    }

    @GetMapping("/postcreate")
    public String createPost(Model model,
                             Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }

        model.addAttribute("tags", tagRepository.findAll());
        return "postcreate";
    }

    @PostMapping("/postcreate")
    public String createPost(@Valid Post post,
                             BindingResult bindingResult,
                             @ModelAttribute("CurUser") AppUser CurUser,
                             Model model,
                             Principal principal) {
        if (principal == null) {
            return "redirect:/user/login";
        }

        //valid -> check for size, notnull, etc
        //bindingresult -> has errors if valid fails
        if (bindingResult.hasErrors()) {
            model.addAttribute("tags", tagRepository.findAll());
            //add tags so they can be displayed on the form again
            //when error: get data does not persist
            return "postcreate";
        }

        post.setPoster(CurUser);
        post.setDate(LocalDate.now());
        postRepository.save(post);

        return "redirect:/postdetails/" + post.getId();
    }


}
