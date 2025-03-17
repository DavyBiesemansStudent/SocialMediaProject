package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.Tag;
import org.springframework.data.repository.CrudRepository;

public interface TagRepository extends CrudRepository<Tag, Integer> {
}
