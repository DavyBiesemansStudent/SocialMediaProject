package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Post;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface PostRepository extends CrudRepository<Post, Integer> {
}
