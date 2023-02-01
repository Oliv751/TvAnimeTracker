-- USER table

CREATE TABLE
    user (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        username varchar(255) NOT NULL,
        email varchar(255) NOT NULL,
        password varchar(255) NOT NULL,
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    user (id, username, email, password)
VALUES (
        'admin',
        'admin@mail.com',
        'toto'
    ), (
        'user',
        'user@mail.com',
        'toto'
    );

-- SHOW table

CREATE TABLE
show (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        img varchar(255) NOT NULL,
        title varchar(255) NOT NULL,
        genre varchar(255) NOT NULL,
        year date NOT NULL,
        description text (255) NOT NULL,
        season varchar(255) NOT NULL,
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
show (
        id,
        title,
        genre,
        year,
        description,
        season
    )
VALUES (
        'The Walking Dead',
        'Horror',
        '2010',
        'A group of survivors travel in search of a safe and secure home.',
        '10'
    ), (
        'Breaking Bad',
        'Drama',
        '2008',
        'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family',
        ' 5 '
    ), (
        ' Game of Thrones ',
        ' Fantasy ',
        ' 2011 ',
        ' Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.',
        ' 8 '
    ), (
        ' Berserk ',
        ' Fantasy ',
        ' 1997 ',
        ' Guts, a lone mercenary, travels the world in a bleak and chaotic era, fighting with and against monstrous creatures to survive. He is known as the Black Swordsman.',
        ' 3 '
    );

-- EPISODE table

CREATE TABLE
    episode (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        id_show int(11) UNSIGNED NOT NULL,
        CONSTRAINT fk_episode_show FOREIGN KEY (id_show) REFERENCES
        show (id),
            season varchar(255) NOT NULL,
            episode varchar(255) NOT NULL,
            title varchar(255) NULL,
            description text (255) NULL,
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    episode (
        id_show,
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
        'Cat\'s in the Bag...',
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

-- SHOWVIEWED table

CREATE TABLE
    showviewed (
        id int(11) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
        id_user int(11) UNSIGNED NOT NULL,
        CONSTRAINT fk_showviewed_user FOREIGN KEY (id_user) REFERENCES user (id),
        id_show int(11) UNSIGNED NOT NULL,
        CONSTRAINT fk_showviewed_show FOREIGN KEY (id_show) REFERENCES
        show (id),
            season varchar(255) NOT NULL,
            episode varchar(255) NOT NULL,
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
    showviewed (
        id_user,
        id_show,
        season,
        episode
    )
VALUES ('1', '1', '1', '1'), ('1', '1', '1', '2'), ('1', '2', '1', '1'), ('1', '2', '1', '2'), ('1', '3', '1', '1'), ('1', '3', '1', '2'), ('1', '4', '1', '1'), ('1', '4', '1', '2'), ('2', '1', '1', '1'), ('2', '1', '1', '2'), ('2', '2', '1', '1'), ('2', '2', '1', '2'), ('2', '3', '1', '1'), ('2', '3', '1', '2'), ('2', '4', '1', '1'), ('2', '4', '1', '2');