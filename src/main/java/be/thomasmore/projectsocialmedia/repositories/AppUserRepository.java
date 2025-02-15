package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.AppUser;
import org.springframework.data.repository.CrudRepository;

public interface AppUserRepository extends CrudRepository<AppUser, Integer> {
}
