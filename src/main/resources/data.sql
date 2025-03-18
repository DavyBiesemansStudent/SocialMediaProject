DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS authorities;
CREATE TABLE users
(
    username varchar(50) not null primary key,
    password varchar(100) not null,
    enabled boolean not null
);
CREATE TABLE authorities
(
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);
create unique index ix_auth_username on authorities (username,authority);

-- For johnnywalker92
INSERT INTO USERS (username, password, enabled)
VALUES ('johnnywalker92', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('johnnywalker92', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('johnnywalker92', 'John Walker', 'Just a tech enthusiast with a passion for building apps and exploring new software. I spend my days coding, learning new programming languages, and looking for the next big innovation in the tech world.', '/img/profile_pic.png');

-- For codingalice
INSERT INTO USERS (username, password, enabled)
VALUES ('codingalice', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('codingalice', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('codingalice', 'Alice Smith', 'Loves coding and coffee! I''m always experimenting with new algorithms, and when I''m not in front of my computer, you can find me with a hot cup of coffee reading up on the latest tech trends.', '/img/profile_pic.png');

-- For fitbob88
INSERT INTO USERS (username, password, enabled)
VALUES ('fitbob88', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('fitbob88', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('fitbob88', 'Bob Johnson', 'Fitness fanatic and travel lover. I''m passionate about living a healthy lifestyle and pushing myself to new limits in the gym. When I''m not working out, I love exploring new countries and cultures.', '/img/profile_pic.png');

-- For foodiecharlie
INSERT INTO USERS (username, password, enabled)
VALUES ('foodiecharlie', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('foodiecharlie', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('foodiecharlie', 'Charlie Brown', 'Foodie and amateur photographer always on the lookout for the next best meal. Whether it''s a hole-in-the-wall diner or a five-star restaurant, I love documenting my culinary adventures with my camera.', '/img/profile_pic.png');

-- For musicdavid56
INSERT INTO USERS (username, password, enabled)
VALUES ('musicdavid56', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('musicdavid56', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('musicdavid56', 'David White', 'Music lover and bookworm with a collection of vinyl records and a deep passion for storytelling. If I''m not lost in a good book, you''ll find me jamming to classic rock or jazz tunes on my turntable.', '/img/profile_pic.png');

-- For runner_eco
INSERT INTO USERS (username, password, enabled)
VALUES ('runner_eco', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('runner_eco', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('runner_eco', 'Eva Green', 'Avid runner and environmentalist. I run to clear my mind and stay healthy, and I''m a strong advocate for sustainability and protecting our planet. I believe every small action counts towards making a big difference.', '/img/profile_pic.png');

-- For gamerfrank01
INSERT INTO USERS (username, password, enabled)
VALUES ('gamerfrank01', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('gamerfrank01', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('gamerfrank01', 'Frank Harris', 'Gamer, movie buff, and coffee enthusiast. I spend my weekends in front of the screen, whether it''s diving into an epic RPG, catching the latest blockbuster movie, or sipping on my favorite dark roast coffee.', '/img/profile_pic.png');

-- For artsygrace
INSERT INTO USERS (username, password, enabled)
VALUES ('artsygrace', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('artsygrace', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('artsygrace', 'Grace Lee', 'Aspiring artist and fashion lover with a creative mind. I find inspiration in the world around me, whether it''s through sketching, painting, or curating outfits that express my style and personality.', '/img/profile_pic.png');

-- For sports_hank
INSERT INTO USERS (username, password, enabled)
VALUES ('sports_hank', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('sports_hank', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('sports_hank', 'Hank Moore', 'Sports enthusiast and photography lover. Whether I''m on the field or behind the camera, I''m always seeking new challenges. I have a passion for capturing the perfect action shot during sports games and adventures.', '/img/profile_pic.png');

-- For natureiris
INSERT INTO USERS (username, password, enabled)
VALUES ('natureiris', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('natureiris', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('natureiris', 'Iris Perez', 'Animal lover and nature explorer. I enjoy hiking through forests, discovering hidden wildlife, and supporting wildlife conservation. My goal is to protect nature and inspire others to reconnect with the outdoors.', '/img/profile_pic.png');

-- For techgeek25
INSERT INTO USERS (username, password, enabled)
VALUES ('techgeek25', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('techgeek25', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('techgeek25', 'Tech Geek', 'Tech enthusiast with a passion for AI, machine learning, and coding. I spend my time exploring the latest technologies, programming, and contributing to open-source projects.', '/img/profile_pic.png');

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

INSERT INTO post_likedusers (likedposts_id, likedusers_id)
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

INSERT INTO TAG (name, description, descriptionExtended, img_path) VALUES
    ('Sports', 'Everything related to sport', 'Covers all aspects of sports, including athletes, training tips, and sports news.', '/img/tag-sports.jpg'),
    ('Technology', 'Latest trends and innovations in the tech world', 'Stay updated on the newest gadgets, software, AI advancements, and technological breakthroughs.', '/img/tag-technology.webp'),
    ('Music', 'Everything related to music, from genres to artists', 'Explore music history, artist spotlights, trending genres, and album reviews.', '/img/tag-music.jpg'),
    ('Travel', 'Explore destinations, tips, and travel experiences', 'Discover the world with travel guides, cultural insights, and essential travel hacks.', '/img/tag-travel.jpg'),
    ('Food', 'Recipes, cooking tips, and culinary delights', 'From home-cooked meals to exotic cuisines, find delicious recipes and expert cooking advice.', '/img/tag-food.jpg'),
    ('Health', 'Health tips, fitness, and mental well-being', 'Get insights on physical fitness, mental health strategies, nutrition, and overall wellness.', '/img/tag-health.webp'),
    ('Literature', 'Everything written, books, comics and novels', 'Discuss classic literature, modern novels, poetry, and graphic storytelling.', '/img/tag-literature.jpg'),
    ('Film', 'Discussions about movies, shows and everything else video', 'Engage in movie reviews, TV show recommendations, filmmaking techniques, and industry trends.', '/img/tag-film.jpg'),
    ('Event', 'Themed events, meetups, and generous rewards', 'Stay informed on current events, posts related to said events, and discussions surrounding events.', '/img/tag-event.jpg');



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

INSERT INTO Event (title, description, img_path, reward, conditions)
VALUES ('Photography Competition 2025',
        'A competition for photographers to showcase their best shots. Submit your most stunning photographs for a chance to win!',
        '/img/event-image.jpg',
        'A $1000 Photography Equipment Voucher',
        'All pictures must be SFW ;Participants must be 16+ ;Heavy image editing is not allowed, (small changes are allowed) ;All pictures must be original works. No stock photos');
