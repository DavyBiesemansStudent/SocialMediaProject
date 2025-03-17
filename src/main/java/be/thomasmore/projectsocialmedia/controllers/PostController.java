package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Comment;
import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.AppUserRepository;
import be.thomasmore.projectsocialmedia.repositories.CommentRepository;
import be.thomasmore.projectsocialmedia.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.time.LocalDate;
import java.util.Collections;
import java.util.List;
import java.util.Optional;


@Controller
public class PostController {

    @Autowired
    private PostRepository postRepository;

    @Autowired
    private AppUserRepository appUserRepository;

    @Autowired
    private CommentRepository commentRepository;

    @GetMapping({"/postdetails", "/postdetails/{id}"})
    public String postdetails(Model model, @PathVariable Integer id) {
        if (id == null) {
            return "postdetails";
        }

        Optional<Post> postFromDB = postRepository.findById(id);

        if(postFromDB.isPresent()){
            model.addAttribute("post", postFromDB.get());
            model.addAttribute("poster", postFromDB.get().getPoster());
            model.addAttribute("comments", postFromDB.get().getCommentsPost());
        }

        return "postdetails";
    }

    @GetMapping("/feed")
    public String home(Model model,
                       @RequestParam(required = false) String title,
                       @RequestParam(required = false) String description,
                       @RequestParam(required = false) String tag,
                       @RequestParam(required = false) String date,
                       @RequestParam(required = false) Integer minLikes,
                       @RequestParam(required = false) Integer maxLikes) {
        // Convert date string to LocalDate if it's not empty
        LocalDate parsedDate = null;
        if (date != null && !date.isEmpty()) {
            parsedDate = LocalDate.parse(date);  // Parse the date
        }

        List<Post> posts = postRepository.findByFilter(title, description, tag, parsedDate, minLikes, maxLikes);
        Collections.reverse(posts); //(most recent first)

        model.addAttribute("posts", posts);
        return "feed";
    }

    @PostMapping("/likePost")
    public String likePost(@RequestParam Integer postId,
                           Principal principal) {

        String username = principal.getName();
        AppUser user = appUserRepository.findByUsername(username);

        Optional<Post> postFromDB = postRepository.findById(postId);
        if (postFromDB.isEmpty()) {
            return "redirect:/feed";
        }

        Post post = postFromDB.get();

        // Toggle like
        if (post.getLikedusers().contains(user)) {
            post.getLikedusers().remove(user);
            user.getLikedposts().remove(post);
        } else {
            post.getLikedusers().add(user);
            user.getLikedposts().add(post);
        }

        postRepository.save(post);
        appUserRepository.save(user);

        return "redirect:/postdetails/" + post.getId();
    }


    @PostMapping("/addComment")
    public String addComment(@RequestParam String commentText,
                             @RequestParam Integer postId,
                             Principal principal) {

        String username = principal.getName();
        AppUser appUser = appUserRepository.findByUsername(username);

        Optional<Post> postFromDB = postRepository.findById(postId);
        if (postFromDB.isEmpty()) {
            return "redirect:/feed";
        }
        Post post = postFromDB.get();

        Comment comment = new Comment();
        comment.setComment(commentText);
        comment.setPost(post);
        comment.setAppUser(appUser);

        commentRepository.save(comment);

        return "redirect:/postdetails/" + postId;
    }


}
