package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.Tag;
import be.thomasmore.projectsocialmedia.repositories.TagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TagController {

    @Autowired
    private TagRepository tagRepository;

    @GetMapping("/taglist")
    public String tags(Model model) {
        final Iterable<Tag> tags = tagRepository.findAll();
        model.addAttribute("tags", tags);
        return "taglist";
    }
}
