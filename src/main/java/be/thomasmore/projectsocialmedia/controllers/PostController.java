package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.Post;
import be.thomasmore.projectsocialmedia.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.List;
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
            model.addAttribute("user", postFromDB.get().getPoster());
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

        // Call repository with parameters
        List<Post> filteredPosts = postRepository.findByFilter(title, description, tag, parsedDate, minLikes, maxLikes);

        model.addAttribute("posts", filteredPosts);
        return "feed";  // Return the page to display filtered posts
    }

}
