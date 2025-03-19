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
VALUES ('johnnywalker92', 'John Walker', 'Just a tech enthusiast with a passion for building apps and exploring new software. I spend my days coding, learning new programming languages, and looking for the next big innovation in the tech world.', 'https://i.imgur.com/D4BiyQd.jpeg');

-- For codingalice
INSERT INTO USERS (username, password, enabled)
VALUES ('codingalice', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('codingalice', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('codingalice', 'Alice Smith', 'Loves coding and coffee! I''m always experimenting with new algorithms, and when I''m not in front of my computer, you can find me with a hot cup of coffee reading up on the latest tech trends.', 'https://i.imgur.com/pKgABuT.jpeg');

-- For fitbob88
INSERT INTO USERS (username, password, enabled)
VALUES ('fitbob88', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('fitbob88', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('fitbob88', 'Bob Johnson', 'Fitness fanatic and travel lover. I''m passionate about living a healthy lifestyle and pushing myself to new limits in the gym. When I''m not working out, I love exploring new countries and cultures.', 'https://i.imgur.com/o9fpo46.png');

-- For foodiecharlie
INSERT INTO USERS (username, password, enabled)
VALUES ('foodiecharlie', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('foodiecharlie', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('foodiecharlie', 'Charlie Brown', 'Foodie and amateur photographer always on the lookout for the next best meal. Whether it''s a hole-in-the-wall diner or a five-star restaurant, I love documenting my culinary adventures with my camera.', 'https://i.imgur.com/J2NT0Vd.png');

-- For musicdavid56
INSERT INTO USERS (username, password, enabled)
VALUES ('musicdavid56', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('musicdavid56', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('musicdavid56', 'David White', 'Music lover and bookworm with a collection of vinyl records and a deep passion for storytelling. If I''m not lost in a good book, you''ll find me jamming to classic rock or jazz tunes on my turntable.', 'https://i.imgur.com/KeIzwFF.jpeg');

-- For runner_eco
INSERT INTO USERS (username, password, enabled)
VALUES ('runner_eco', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('runner_eco', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('runner_eco', 'Eva Green', 'Avid runner and environmentalist. I run to clear my mind and stay healthy, and I''m a strong advocate for sustainability and protecting our planet. I believe every small action counts towards making a big difference.', 'https://i.imgur.com/5t6f2uX.jpeg');

-- For gamerfrank01
INSERT INTO USERS (username, password, enabled)
VALUES ('gamerfrank01', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('gamerfrank01', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('gamerfrank01', 'Frank Harris', 'Gamer, movie buff, and coffee enthusiast. I spend my weekends in front of the screen, whether it''s diving into an epic RPG, catching the latest blockbuster movie, or sipping on my favorite dark roast coffee.', 'https://i.imgur.com/0D3B2ax.png');

-- For artsygrace
INSERT INTO USERS (username, password, enabled)
VALUES ('artsygrace', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('artsygrace', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('artsygrace', 'Grace Lee', 'Aspiring artist and fashion lover with a creative mind. I find inspiration in the world around me, whether it''s through sketching, painting, or curating outfits that express my style and personality.', 'https://i.imgur.com/7E8FmDg.jpeg');

-- For sports_hank
INSERT INTO USERS (username, password, enabled)
VALUES ('sports_hank', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('sports_hank', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('sports_hank', 'Hank Moore', 'Sports enthusiast and photography lover. Whether I''m on the field or behind the camera, I''m always seeking new challenges. I have a passion for capturing the perfect action shot during sports games and adventures.', 'https://i.imgur.com/EBubgT0.jpeg');

-- For natureiris
INSERT INTO USERS (username, password, enabled)
VALUES ('natureiris', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('natureiris', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('natureiris', 'Iris Perez', 'Animal lover and nature explorer. I enjoy hiking through forests, discovering hidden wildlife, and supporting wildlife conservation. My goal is to protect nature and inspire others to reconnect with the outdoors.', 'https://i.imgur.com/R6q4snA.png');

-- For techgeek25
INSERT INTO USERS (username, password, enabled)
VALUES ('techgeek25', '$2a$12$d4ube5kH9.SllDIjVdObMu726bb73w3JV1jrhHrZuJys91Zx527yS', true);
INSERT INTO authorities (username, authority) VALUES ('techgeek25', 'USER');
INSERT INTO APP_USER (USERNAME, NAME, BIO, PROFILE_PICTURE_URL)
VALUES ('techgeek25', 'Tech Geek', 'Tech enthusiast with a passion for AI, machine learning, and coding. I spend my time exploring the latest technologies, programming, and contributing to open-source projects.', 'https://i.imgur.com/KUngZ7V.jpeg');

INSERT INTO post (title, description, poster_id, date, img_Path)
VALUES
    ('First Post', 'This is my first post!', 1, '2024-02-01', 'https://i.imgur.com/nMSZRXh.jpeg'),
    ('Sunset View', 'Captured a beautiful sunset today.', 2, '2024-02-02', 'https://i.imgur.com/wX5bRgj.jpeg'),
    ('Workout Motivation', 'Hit the gym early today!', 3, '2024-02-03', 'https://images.unsplash.com/photo-1545346315-f4c47e3e1b55?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    ('Book Recommendation', 'Just finished reading an amazing book.', 4, '2024-02-04', 'https://images.unsplash.com/photo-1629992101753-56d196c8aabb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Ym9vayUyMGNvdmVyfGVufDB8fDB8fHww'),
    ('Coding Journey', 'Learning Java and loving it!', 5, '2024-02-05', 'https://i.imgur.com/7LxyIjq.jpeg'),
    ('Weekend Getaway', 'Had a relaxing trip to the mountains.', 6, '2024-02-06', 'https://i.imgur.com/x7Mas4c.jpeg'),
    ('Movie Night', 'Watched an awesome movie today.', 7, '2024-02-07', 'https://i.imgur.com/A41t0Fc.jpeg'),
    ('New Recipe', 'Tried making homemade pasta today!', 8, '2024-02-08', 'https://i.imgur.com/ImsP5oV.jpeg'),
    ('Tech News', 'Exciting updates in the AI world!', 9, '2024-02-09', 'https://i.imgur.com/5SZ5fAN.jpeg'),
    ('Exploring Quantum Computing', 'A deep dive into the future of computing with quantum mechanics.', 10, '2024-02-10', 'https://i.imgur.com/uv9PGD2.jpeg'),
    ('Fitness Progress', 'Getting stronger every day!', 3, '2024-02-11', 'https://i.imgur.com/blAcNWq.jpeg'),
    ('Gamer’s Paradise', 'Just unlocked a new level in my favorite game!', 7, '2024-02-12', 'https://i.imgur.com/zJOCn8d.png'),
    ('Artist’s Creation', 'Finished a new painting, feel so proud of it!', 8, '2024-02-13', 'https://i.imgur.com/exNiGpG.jpeg'),
    ('Nature Walk', 'Enjoyed a peaceful walk in the forest.', 10, '2024-02-14', 'https://i.imgur.com/hrGZmnJ.jpeg'),
    ('Tech Gadgets', 'Can’t wait to try out the new gadget I just bought.', 11, '2024-02-15', 'https://i.imgur.com/BpOitJq.jpeg');


INSERT INTO post_likedusers (likedposts_id, likedusers_id)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (1, 1),
    (1, 4),
    (2, 4),
    (2, 6),
    (2, 5),
    (3, 7),
    (3, 8),
    (3, 9),
    (3, 6),
    (4, 2),
    (4, 8),
    (4, 9),
    (4, 7),
    (5, 1),
    (5, 4),
    (5, 6),
    (5, 7),
    (6, 3),
    (6, 7),
    (6, 9),
    (7, 2),
    (7, 5),
    (7, 6),
    (8, 8),
    (8, 9),
    (8, 7),
    (9, 1),
    (9, 3),
    (9, 6),
    (9, 8),
    (10, 3),
    (10, 6),
    (10, 7),
    (11, 1),
    (11, 4),
    (11, 8),
    (12, 2),
    (12, 3),
    (12, 9),
    (13, 4),
    (13, 5),
    (13, 7),
    (14, 1),
    (14, 3),
    (14, 6),
    (15, 2),
    (15, 5),
    (15, 9);

-- Comments
-- Post 1: First Post
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is a great first post! Looking forward to more!', 2, 1);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Excited to see what you post next! Welcome to the community.', 3, 1);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Looking forward to seeing more of your content!', 4, 1);

-- Post 2: Sunset View
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Such a beautiful sunset! Wish I could see it in person.', 6, 2);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This sunset looks amazing! Did you capture the whole scene?', 7, 2);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I love sunsets like these, it’s the perfect way to end the day.', 8, 2);

-- Post 3: Workout Motivation
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I need this motivation! I’m going to hit the gym tomorrow!', 2, 3);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Keep it up! Seeing these posts makes me want to get back into the gym.', 5, 3);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Your dedication is inspiring. I’ll be hitting the gym soon too!', 7, 3);

-- Post 4: Book Recommendation
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I love book recommendations! What was your favorite part of the book?', 6, 4);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’ll have to check this out! What genre is it?', 7, 4);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’m always looking for new books to read. Thanks for sharing!', 8, 4);

-- Post 5: Coding Journey
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Java is awesome! Have you tried any frameworks yet?', 6, 5);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Learning Java is fun. Good luck on your coding journey!', 7, 5);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’ve been learning Java too! It’s tough but so rewarding.', 8, 5);

-- Post 6: Weekend Getaway
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Your trip sounds amazing! I could use a relaxing getaway.', 7, 6);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('That sounds like the perfect weekend! I need to plan something similar.', 9, 6);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Mountains are so peaceful. Was it your first time there?', 3, 6);

-- Post 7: Movie Night
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('What movie did you watch? I love movie nights!', 2, 7);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’m always down for a good movie night. Any recommendations?', 4, 7);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('That sounds like fun! I need a movie marathon weekend soon.', 5, 7);

-- Post 8: New Recipe
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Homemade pasta sounds delicious! How did it turn out?', 6, 8);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’m always looking for new recipes to try. This looks amazing!', 7, 8);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I love cooking pasta! What sauce did you pair it with?', 8, 8);

-- Post 9: Tech News
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('AI is changing everything! Excited to see where it goes.', 3, 9);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Tech news like this is always so interesting! Thanks for sharing!', 5, 9);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('AI is the future! Can’t wait to see how it evolves.', 7, 9);

-- Post 10: Exploring Quantum Computing
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Quantum computing is mind-blowing! I’m excited about the future.', 4, 10);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('This is such a cool topic! Can you explain more about how quantum computing works?', 5, 10);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’ve heard so much about quantum computing but still don’t fully understand it. Great read!', 2, 10);

-- Post 11: Fitness Progress
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('You’re making great progress! Keep it up, you’re inspiring me!', 6, 11);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Wow, I can really see the results! It motivates me to push harder in the gym.', 8, 11);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Amazing progress! I need to step up my fitness game too.', 7, 11);

-- Post 12: Gamer’s Paradise
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Congratulations on the new level! What’s the next challenge?', 2, 12);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('That’s awesome! What game are you playing?', 4, 12);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Game progress is always so satisfying! What level are you on now?', 5, 12);

-- Post 13: Artist’s Creation
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Your painting is stunning! What was your inspiration?', 3, 13);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I love the colors you chose for this piece. It’s beautiful!', 7, 13);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Incredible work! How long did it take you to finish?', 6, 13);

-- Post 14: Nature Walk
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Nature walks are so peaceful. I’d love to take one soon!', 8, 14);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('That sounds like a perfect way to unwind. Where did you go?', 7, 14);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I love nature walks! They always help me clear my head.', 5, 14);

-- Post 15: Tech Gadgets
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('Tech gadgets are always exciting! Can’t wait to hear about your experience with it.', 6, 15);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I’m all about tech gadgets! Can’t wait to try this one out too.', 8, 15);
INSERT INTO comment (comment, app_user_id, post_id) VALUES ('I love tech gadgets! Hope it lives up to the hype.', 7, 15);


INSERT INTO TAG (name, description, descriptionExtended, img_path) VALUES
    ('Event', 'Themed events, meetups, and generous rewards', 'Stay informed on current events, posts related to said events, and discussions surrounding events.', '/img/tag-event.jpg'),
    ('Sports', 'Everything related to sport', 'Covers all aspects of sports, including athletes, training tips, and sports news.', '/img/tag-sports.jpg'),
    ('Technology', 'Latest trends and innovations in the tech world', 'Stay updated on the newest gadgets, software, AI advancements, and technological breakthroughs.', '/img/tag-technology.webp'),
    ('Music', 'Everything related to music, from genres to artists', 'Explore music history, artist spotlights, trending genres, and album reviews.', '/img/tag-music.jpg'),
    ('Travel', 'Explore destinations, tips, and travel experiences', 'Discover the world with travel guides, cultural insights, and essential travel hacks.', '/img/tag-travel.jpg'),
    ('Food', 'Recipes, cooking tips, and culinary delights', 'From home-cooked meals to exotic cuisines, find delicious recipes and expert cooking advice.', '/img/tag-food.jpg'),
    ('Health', 'Health tips, fitness, and mental well-being', 'Get insights on physical fitness, mental health strategies, nutrition, and overall wellness.', '/img/tag-health.webp'),
    ('Literature', 'Everything written, books, comics and novels', 'Discuss classic literature, modern novels, poetry, and graphic storytelling.', '/img/tag-literature.jpg'),
    ('Film', 'Discussions about movies, shows and everything else video', 'Engage in movie reviews, TV show recommendations, filmmaking techniques, and industry trends.', '/img/tag-film.jpg'),
    ('Meme', 'Discussions about memes, internet culture, and viral content', 'Engage in sharing memes, discussing trends, and exploring internet humor.', '/img/tag-meme.webp'),
    ('Art', 'Discussions about visual art, creativity, and artistic techniques', 'Engage in sharing artwork, discussing artistic processes, and exploring different art styles.', '/img/tag-art.webp');


INSERT INTO post_tags_post (posts_id, tags_post_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 5),
    (2, 11),
    (3, 7),
    (4, 8),
    (5, 3),
    (6, 5),
    (7, 9),
    (8, 6),
    (9, 3),
    (10, 3),
    (11, 7),
    (12, 10),
    (13, 11),
    (14, 5),
    (15, 3);




INSERT INTO Event (title, description, img_path, reward, conditions)
VALUES ('Photography Competition 2025',
        'A competition for photographers to showcase their best shots. Submit your most stunning photographs for a chance to win!',
        '/img/event-image.jpg',
        'A $1000 Photography Equipment Voucher',
        'All pictures must be SFW ;Participants must be 16+ ;Heavy image editing is not allowed, (small changes are allowed) ;All pictures must be original works. No stock photos');
