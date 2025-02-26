package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.Post;
import org.springframework.data.repository.CrudRepository;

public interface PostRepository extends CrudRepository<Post, Integer> {
}
