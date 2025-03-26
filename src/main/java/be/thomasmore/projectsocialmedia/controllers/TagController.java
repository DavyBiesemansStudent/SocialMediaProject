package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.Tag;
import be.thomasmore.projectsocialmedia.repositories.TagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@Controller
public class TagController {

    @Autowired
    private TagRepository tagRepository;

    @GetMapping("/taglist")
    public String taglist(Model model) {
        final Iterable<Tag> tags = tagRepository.findAll();
        model.addAttribute("tags", tags);
        return "taglist";
    }

    @GetMapping({"/tagdetails", "/tagdetails/{id}"})
    public String tagdetails(@PathVariable Integer id, Model model) {
        if (id == null) {
            return "tagdetails";
        }

        Optional<Tag> tag = tagRepository.findById(id);
        if (tag.isPresent()) {
            Tag tagDB = tag.get();
            model.addAttribute("tag", tagDB);
        }

        return "tagdetails";
    }
}
