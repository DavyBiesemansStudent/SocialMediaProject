package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-Wireframes aanpassen
-alles in 'My Profile' in de header laten werken
-likes en comments laten werken
-format date
-check voor user in postedit (niet iedereen mag elke post editen alleen de owner van de post mag editen)
-security voor postedit
-admin (kan elke post deleten niet editen)
-vandaag -> user kan inloggen, user kan zijn eigen post editen en niet die van andere mensen. (post createn etc.. nog niet nu)
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
