package be.thomasmore.projectsocialmedia.model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
public class AppUser {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment id (last-used + 1)
    private int id;

    private String userName;
    private String password;

    @Column(length = 250)
    private String bio;

    private String email;
    private String profilePictureUrl;

    @ManyToMany(mappedBy = "likedBy")
    private Collection<Post> postsLiked;

    @OneToMany(mappedBy = "poster")
    private Collection<Post> post;

    @OneToMany(mappedBy = "appUser")
    private Collection<Comment> comments;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getProfilePictureUrl() {
        return profilePictureUrl;
    }

    public void setProfilePictureUrl(String profilePictureUrl) {
        this.profilePictureUrl = profilePictureUrl;
    }

    public Collection<Post> getLikes() {
        return postsLiked;
    }

    public void setLikes(Collection<Post> posts) {
        this.postsLiked = posts;
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
