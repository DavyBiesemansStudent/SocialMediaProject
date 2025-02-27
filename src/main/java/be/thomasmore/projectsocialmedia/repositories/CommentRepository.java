package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.Comment;
import org.springframework.data.repository.CrudRepository;

public interface CommentRepository extends CrudRepository<Comment, Integer> {
}
