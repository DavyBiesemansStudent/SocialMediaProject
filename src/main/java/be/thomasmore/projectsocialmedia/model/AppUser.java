package be.thomasmore.projectsocialmedia.model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
public class AppUser {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment id (last-used + 1)
    private int id;

    @Column(length = 50)
    private String name;

    @Column(length = 250)
    private String bio;

    private String profilePictureUrl;

    @ManyToMany(mappedBy = "likedusers")
    private Collection<Post> likedposts;

    @OneToMany(mappedBy = "poster")
    private Collection<Post> post;

    @OneToMany(mappedBy = "appUser")
    private Collection<Comment> comments;

    @Column(length = 30)
    private String username;

    public Collection<Post> getLikedposts() {
        return likedposts;
    }

    public void setLikedposts(Collection<Post> postsLiked) {
        this.likedposts = postsLiked;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String userName) {
        this.name = userName;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getProfilePictureUrl() {
        return profilePictureUrl;
    }

    public void setProfilePictureUrl(String profilePictureUrl) {
        this.profilePictureUrl = profilePictureUrl;
    }

    public Collection<Post> getLikes() {
        return likedposts;
    }

    public void setLikes(Collection<Post> posts) {
        this.likedposts = posts;
    }

    public Collection<Post> getPost() {
        return post;
    }

    public void setPost(Collection<Post> post) {
        this.post = post;
    }

    public Collection<Comment> getComments() {
        return comments;
    }

    public void setComments(Collection<Comment> comments) {
        this.comments = comments;
    }
}
