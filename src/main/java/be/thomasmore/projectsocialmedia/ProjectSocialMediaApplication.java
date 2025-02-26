package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-Wireframes aanpassen
-detail pagina profile
-alles in 'My Profile' in de header laten werken
-main feed maken (likes en comments laten werken)
-detail pagina per post (comments / full img / description van de post)
-genres/tags adden (ManyToMany)
-comments (OneToMany)
-likes (ManyToMany)
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
