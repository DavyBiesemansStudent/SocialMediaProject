package be.thomasmore.projectsocialmedia.model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
public class Tag {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private String description;
    @Column(length = 2000)
    private String descriptionextended;
    private String imgPath;

    @ManyToMany(mappedBy = "tagsPost")
    private Collection<Post> posts;

    public String getDescriptionextended() {
        return descriptionextended;
    }

    public void setDescriptionextended(String descriptionextended) {
        this.descriptionextended = descriptionextended;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public Collection<Post> getPosts() {
        return posts;
    }

    public void setPosts(Collection<Post> posts) {
        this.posts = posts;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
