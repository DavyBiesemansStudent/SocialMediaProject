package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-Wireframes aanpassen
-detail pagina profile
-alles in 'My Profile' in de header laten werken
-genres/tags adden (ManyToMany + detail pagina waarin je uitlegt wat het inhoud)
-comments (OneToMany)
-likes (ManyToMany)
-werken met cards naast elkaar ipv 1 grote post elke keer
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
