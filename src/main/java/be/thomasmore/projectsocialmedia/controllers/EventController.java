package be.thomasmore.projectsocialmedia.controllers;

import be.thomasmore.projectsocialmedia.model.Event;
import be.thomasmore.projectsocialmedia.repositories.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Optional;

@Controller
public class EventController {

    @Autowired
    private EventRepository eventRepository;

    @GetMapping("/eventdetails")
    public String eventdetails(Model model) {
        Optional<Event> event = eventRepository.findById(1);

        if (event.isPresent()) {
            model.addAttribute("event", event.get());
            return "eventdetails";
        } else {
            return "error";
        }
    }
}
