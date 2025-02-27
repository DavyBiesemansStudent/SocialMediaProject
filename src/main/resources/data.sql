INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('johnnywalker92', 'password123', 'Just a tech enthusiast with a passion for building apps and exploring new software. I spend my days coding, learning new programming languages, and looking for the next big innovation in the tech world.', 'john.doe@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('codingalice', 'alicepassword', 'Loves coding and coffee! I''m always experimenting with new algorithms, and when I''m not in front of my computer, you can find me with a hot cup of coffee reading up on the latest tech trends.', 'alice.smith@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('fitbob88', 'bob12345', 'Fitness fanatic and travel lover. I''m passionate about living a healthy lifestyle and pushing myself to new limits in the gym. When I''m not working out, I love exploring new countries and cultures.', 'bob.jones@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('foodiecharlie', 'charliepass', 'Foodie and amateur photographer always on the lookout for the next best meal. Whether it''s a hole-in-the-wall diner or a five-star restaurant, I love documenting my culinary adventures with my camera.', 'charlie.brown@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('musicdavid56', 'davidpw123', 'Music lover and bookworm with a collection of vinyl records and a deep passion for storytelling. If I''m not lost in a good book, you''ll find me jamming to classic rock or jazz tunes on my turntable.', 'david.white@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('runner_eco', 'evagreenpass', 'Avid runner and environmentalist. I run to clear my mind and stay healthy, and I''m a strong advocate for sustainability and protecting our planet. I believe every small action counts towards making a big difference.', 'eva.green@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('gamerfrank01', 'frankpassword', 'Gamer, movie buff, and coffee enthusiast. I spend my weekends in front of the screen, whether it''s diving into an epic RPG, catching the latest blockbuster movie, or sipping on my favorite dark roast coffee.', 'frank.harris@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('artsygrace', 'gracepass123', 'Aspiring artist and fashion lover with a creative mind. I find inspiration in the world around me, whether it''s through sketching, painting, or curating outfits that express my style and personality.', 'grace.lee@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('sports_hank', 'hankmoorepw', 'Sports enthusiast and photography lover. Whether I''m on the field or behind the camera, I''m always seeking new challenges. I have a passion for capturing the perfect action shot during sports games and adventures.', 'hank.moore@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('natureiris', 'irisperez123', 'Animal lover and nature explorer. I enjoy hiking through forests, discovering hidden wildlife, and supporting wildlife conservation. My goal is to protect nature and inspire others to reconnect with the outdoors.', 'iris.perez@example.com', '/img/profile_pic.png');

INSERT INTO APP_USER (USER_NAME, PASSWORD, BIO, EMAIL, PROFILE_PICTURE_URL)
VALUES ('techgeek25', 'securepassword123', 'Tech enthusiast with a passion for AI, machine learning, and coding. I spend my time exploring the latest technologies, programming, and contributing to open-source projects.', 'tech.geek25@example.com', '/img/profile_pic.png');

--temp
INSERT INTO post (title, description, poster_id, date, img_Path)
VALUES
    ('First Post', 'This is my first post!', 1, '2024-02-26', '/img/testimg1.webp'),
    ('Sunset View', 'Captured a beautiful sunset today.', 2, '2024-02-25', '/img/testimg2.jpg'),
    ('Workout Motivation', 'Hit the gym early today!', 3, '2024-02-24', '/img/testimg3.jpg'),
    ('Book Recommendation', 'Just finished reading an amazing book.', 4, '2024-02-23', '/img/testimg1.webp'),
    ('Coding Journey', 'Learning Java and loving it!', 5, '2024-02-22', '/img/testimg2.jpg'),
    ('Weekend Getaway', 'Had a relaxing trip to the mountains.', 6, '2024-02-21', '/img/testimg3.jpg'),
    ('Movie Night', 'Watched an awesome movie today.', 7, '2024-02-20', '/img/testimg1.webp'),
    ('New Recipe', 'Tried making homemade pasta today!', 8, '2024-02-19', '/img/testimg2.jpg'),
    ('Tech News', 'Exciting updates in the AI world!', 9, '2024-02-18', '/img/testimg3.jpg'),
    ('Exploring Quantum Computing', 'A deep dive into the future of computing with quantum mechanics.', 10, '2024-02-20', '/img/testimg3.jpg');
--temp

INSERT INTO post_liked_by (posts_liked_id, liked_by_id)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (1, 1),
    (2, 4),
    (2, 6),
    (3, 7),
    (3, 8),
    (3, 9),
    (4, 2),
    (4, 8),
    (4, 9),
    (5, 1),
    (5, 4),
    (5, 6),
    (6, 3),
    (6, 7),
    (7, 2),
    (7, 5),
    (8, 8),
    (8, 9),
    (9, 1),
    (9, 3),
    (9, 6),
    (10, 3),
    (10, 6);

-- Post 1 (by user1)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 1', 2, 1);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 1', 3, 1);

-- Post 2 (by user2)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 2', 5, 2);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 2', 6, 2);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #3 on post 2', 1, 2);

-- Post 3 (by user3)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 3', 4, 3);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 3', 7, 3);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #3 on post 3', 8, 3);

-- Post 4 (by user4)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 4', 3, 4);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 4', 9, 4);

-- Post 5 (by user5)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 5', 2, 5);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 5', 6, 5);

-- Post 6 (by user6)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 6', 4, 6);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 6', 7, 6);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #3 on post 6', 8, 6);

-- Post 7 (by user7)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 7', 5, 7);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 7', 2, 7);

-- Post 8 (by user8)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 8', 3, 8);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 8', 4, 8);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #3 on post 8', 1, 8);

-- Post 9 (by user9)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 9', 7, 9);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 9', 6, 9);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #3 on post 9', 5, 9);

-- Post 10 (by user10)
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #1 on post 10', 4, 10);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #2 on post 10', 9, 10);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is comment #3 on post 10', 2, 10);

INSERT INTO TAG (name, description) VALUES ('Sports', 'Everything related to sport');
INSERT INTO TAG (name, description) VALUES ('Technology', 'Latest trends and innovations in the tech world');
INSERT INTO TAG (name, description) VALUES ('Music', 'Everything related to music, from genres to artists');
INSERT INTO TAG (name, description) VALUES ('Travel', 'Explore destinations, tips, and travel experiences');
INSERT INTO TAG (name, description) VALUES ('Food', 'Recipes, cooking tips, and culinary delights');
INSERT INTO TAG (name, description) VALUES ('Health', 'Health tips, fitness, and mental well-being');
INSERT INTO TAG (name, description) VALUES ('Literature', 'Everything written, books, comics and novels');
INSERT INTO TAG (name, description) VALUES ('Film', 'Discussions about movies, shows and everything else video');


INSERT INTO post_tags_post (posts_id, tags_post_id)
VALUES
    (1, 2),
    (1, 3),
    (2, 4),
    (3, 6),
    (4, 7),
    (5, 2),
    (6, 4),
    (7, 8),
    (8,5),
    (9, 2),
    (10, 2);