package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.Event;
import org.springframework.data.repository.CrudRepository;

public interface EventRepository extends CrudRepository<Event, Integer> {
}
