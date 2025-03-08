package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-Wireframes aanpassen
-Custom error page
-alles in 'My Profile' in de header laten werken
-likes en comments laten werken
-format date
-check voor user in postedit (niet iedereen mag elke post editen alleen de owner van de post mag editen)
-security voor postedit
-admin (kan elke post deleten niet editen)
-edit bio logged in user
-style login/out more
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
