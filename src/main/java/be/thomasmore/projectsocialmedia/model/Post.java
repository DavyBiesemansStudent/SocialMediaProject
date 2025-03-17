package be.thomasmore.projectsocialmedia.model;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.Collection;

@Entity
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 200)
    private String title;
    @Column(length = 1000)
    private String description;
    private String imgPath;
    private LocalDate date;

    @ManyToOne (fetch = FetchType.LAZY)
    private AppUser poster;

    @ManyToMany
    private Collection<AppUser> likedusers;

    @OneToMany(mappedBy = "post")
    private Collection<Comment> commentsPost;

    @ManyToMany
    private Collection<Tag> tagsPost;

    public Collection<Tag> getTagsPost() {
        return tagsPost;
    }

    public void setTagsPost(Collection<Tag> tagsPost) {
        this.tagsPost = tagsPost;
    }

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

    public Collection<AppUser> getLikedusers() {
        return likedusers;
    }

    public void setLikedusers(Collection<AppUser> likedBy) {
        this.likedusers = likedBy;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Collection<Comment> getCommentsPost() {
        return commentsPost;
    }

    public void setCommentsPost(Collection<Comment> commentsPost) {
        this.commentsPost = commentsPost;
    }
}
