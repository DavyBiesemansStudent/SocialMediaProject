package be.thomasmore.projectsocialmedia.repositories;

import be.thomasmore.projectsocialmedia.model.Post;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;


public interface PostRepository extends CrudRepository<Post, Integer> {
    @Query("SELECT p FROM Post p " +
            "JOIN p.tagsPost t " +
            "WHERE (:title IS NULL OR p.title ILIKE CONCAT ('%', :title, '%')) " +
            "AND (:description IS NULL OR p.description ILIKE CONCAT ('%', :description, '%')) " +
            "AND (:tag IS NULL OR t.name IN :tag) " +
            "AND (:date IS NULL OR p.date = :date) " +
            "AND (:minLikes IS NULL OR (SELECT COUNT(l) FROM p.likedusers l) >= :minLikes) " +
            "AND (:maxLikes IS NULL OR (SELECT COUNT(l) FROM p.likedusers l) <= :maxLikes)")
    List<Post> findByFilter(
            @Param("title") String title,
            @Param("description") String description,
            @Param("tag") List<String> tag,
            @Param("date") LocalDate date,
            @Param("minLikes") Integer minLikes,
            @Param("maxLikes") Integer maxLikes
    );



}
