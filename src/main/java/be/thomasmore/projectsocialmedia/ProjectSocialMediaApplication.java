package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-Wireframes aanpassen
-alles in 'My Profile' in de header laten werken
-genres/tags adden (ManyToMany + detail pagina waarin je uitlegt wat het inhoud)
-likes en comments laten werken
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
