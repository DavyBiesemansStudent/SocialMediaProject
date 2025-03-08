package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-LOGIN!!!!
-Wireframes aanpassen
-alles in 'My Profile' in de header laten werken
-likes en comments laten werken
-format date
-check voor user in postedit (niet iedereen mag elke post editen alleen de owner van de post mag editen)
-security voor postedit
-vandaag -> user kan inloggen/registreren, user kan zijn eigen post editen en niet die van andere mensen. (post createn etc.. nog niet nu)
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
