package be.thomasmore.projectsocialmedia.model;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.Collection;

@Entity
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String title;
    private String description;
    private String imgPath;
    private LocalDate date;
    private String comment;

    @ManyToOne
    private AppUser poster;

    @ManyToMany
    private Collection<AppUser> likedBy;


    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getImgPath() {
        return imgPath;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public AppUser getPoster() {
        return poster;
    }

    public void setPoster(AppUser poster) {
        this.poster = poster;
    }

    public Collection<AppUser> getLikedBy() {
        return likedBy;
    }

    public void setLikedBy(Collection<AppUser> likedBy) {
        this.likedBy = likedBy;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
