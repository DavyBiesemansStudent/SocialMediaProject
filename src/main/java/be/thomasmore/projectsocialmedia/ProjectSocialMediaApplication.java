package be.thomasmore.projectsocialmedia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
TODO:
-Custom error page
-alles in 'My Profile' in de header laten werken
-likes en comments laten werken
-format date
-security voor postedit
-admin (kan elke post deleten niet editen)
-edit bio logged in user
-style login/out more
-filter niet hoofdlettergevoelig maken
-user list met search function (maybe ook aantal posts gemaakt door deze user)
-4 detail paginas -> postdetail, settings, profilepage, eventueel tag descriptions
-(of evenement pagina als settings niet telt) -> speciale tag voor een evenement dan? en speciale tab in header (foto uitdaging?)
 andere layout in het algemeen, een volledige pagina vergelijkbaar met party stuff. event is dan een object en alle details over dit
 object staan dan in de event pagina. (event is prob standalone gwn filteren op event tag ofzo)
 iets van "gebruik deze tag om mee deel te nemen aan het evenement" en alle details van het event staan dan in de event pagina zelf
*/

@SpringBootApplication
public class ProjectSocialMediaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjectSocialMediaApplication.class, args);
    }

}
