-- USER table

CREATE TABLE
    user (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        username varchar(255) NOT NULL,
        email varchar(255) NOT NULL,
        password varchar(255) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    user (username, email, password)
VALUES (
        'admin',
        'admin@mail.com',
        'toto'
    ), (
        'user',
        'user@mail.com',
        'toto'
    );

-- SHOserieW table

CREATE TABLE
    serie (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        img varchar(255) NOT NULL,
        title varchar(255) NOT NULL,
        genre varchar(255) NOT NULL,
        year date NOT NULL,
        description text NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    serie (
        img,
        title,
        genre,
        year,
        description
    )
VALUES (
        "https://www.themoviedb.org/t/p/original/4UZzJ65UxR6AsKL6zjFWNYAKb3w.jpg",
        'The Walking Dead',
        'Horror',
        '2010-01-01',
        'A group of survivors travel in search of a safe and secure home.'
    ), (
        "https://www.themoviedb.org/t/p/original/ggFHVNu6YYI5L9pCfOacjizRGt.jpg",
        'Breaking Bad',
        'Drama',
        '2008-01-01',
        'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family'
    ), (
        "https://www.themoviedb.org/t/p/original/3YSdxdhhdCDlMs88RhvjhDLX4CA.jpg",
        'Game of Thrones',
        'Fantasy',
        '2011-01-01',
        'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.'
    ), (
        "https://www.themoviedb.org/t/p/original/lRNr5pAthmT5CO2iLexFLj1Tp66.jpg",
        'Berserk',
        'Fantasy',
        '1997-01-01',
        'Guts, a lone mercenary, travels the world in a bleak and chaotic era, fighting with and against monstrous creatures to survive. He is known as the Black Swordsman.'
    );

-- EPISODE table

CREATE TABLE
    episode (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        id_serie int(11) UNSIGNED NOT NULL,
        season varchar(255) NOT NULL,
        episode varchar(255) NOT NULL,
        title varchar(255) NOT NULL,
        description text NOT NULL,
        CONSTRAINT fk_episode_serie FOREIGN KEY (id_serie) REFERENCES serie (id)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    episode (
        id_serie,
        season,
        episode,
        title,
        description
    )
VALUES (
        '1',
        '1',
        '1',
        'Pilot',
        'Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.'
    ), (
        '1',
        '1',
        '2',
        'Days Gone Bye',
        'Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.'
    ), (
        '2',
        '1',
        '1',
        'Pilot',
        'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family'
    ), (
        '2',
        '1',
        '2',
        "Cat's in the Bag...",
        'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family'
    ), (
        '3',
        '1',
        '1',
        'Winter Is Coming',
        'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.'
    ), (
        '3',
        '1',
        '1',
        'The Kingsroad',
        'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.'
    ), (
        '4',
        '1',
        '1',
        'The Egg of the King',
        'Guts, a lone mercenary, travels the world in a bleak and chaotic era, fighting with and against monstrous creatures to survive. He is known as the Black Swordsman.'
    ), (
        '4',
        '1',
        '2',
        'The Battle for Doldrey',
        'Guts, a lone mercenary, travels the world in a bleak and chaotic era, fighting with and against monstrous creatures to survive. He is known as the Black Swordsman.'
    );

-- episode_user table

CREATE TABLE
    episode_user (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        id_user int(11) UNSIGNED NOT NULL,
        CONSTRAINT fk_episode_user_user FOREIGN KEY (id_user) REFERENCES user (id),
        id_serie int(11) UNSIGNED NOT NULL,
        CONSTRAINT fk_episode_user_serie FOREIGN KEY (id_serie) REFERENCES serie (id),
        season varchar(255) NOT NULL,
        episode varchar(255) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    episode_user (
        id_user,
        id_serie,
        season,
        episode
    )
VALUES ('1', '1', '1', '1'), ('1', '1', '1', '2'), ('1', '2', '1', '1'), ('1', '2', '1', '2'), ('1', '3', '1', '1'), ('1', '3', '1', '2'), ('1', '4', '1', '1'), ('1', '4', '1', '2'), ('2', '1', '1', '1'), ('2', '1', '1', '2'), ('2', '2', '1', '1'), ('2', '2', '1', '2'), ('2', '3', '1', '1'), ('2', '3', '1', '2'), ('2', '4', '1', '1'), ('2', '4', '1', '2');