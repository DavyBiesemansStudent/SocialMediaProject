package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.AppUser;
import be.thomasmore.projectsocialmedia.model.Post;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface AppUserRepository extends CrudRepository<AppUser, Integer> {
    AppUser findByUsername(String username);
    @Query("select a from AppUser a where " +
    ":keyword is null or " +
    "(a.username ILIKE CONCAT ('%', :keyword, '%'))")
    List<AppUser> findByKeyword(String keyword);
}
