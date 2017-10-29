CREATE TABLE heroes (
    id serial PRIMARY key,
    name varchar(50) UNIQUE NOT NULL,
    quote varchar(250) NOT null,
    about_me text NOT NULL,
    image_url VARCHAR(300)
);

INSERT INTO heroes (name, quote, about_me, image_url) VALUES ('The Hulk', '"Right now I''m on the edge, so don''t push me."','I was accidentaly exposed to gamma rays during the detonation of an experimental bomb. When subjected to emotional stress, at or against my will, I experiences an agonizing transformation, often leading to destructive rampages and conflicts.', 'https://www.dropbox.com/s/k846exu2oq2moj7/profile_0004_Hulk.jpg?raw=1');
INSERT INTO heroes (name, quote, about_me, image_url) VALUES ('Storm', '#blacklivesmatter #blackgirlmagic', 'I have the ability to control the weather and I can fly. I am a member of the X-Men, a group of mutant heroes who fight for peace and equality between mutants and humans.', 'https://www.dropbox.com/s/qnplvqg55uopemf/profile_0003_Storm.jpg?raw=1');
INSERT INTO heroes (name, quote, about_me, image_url) VALUES ('Blade', '"Some MFs are always trying to ice-skate uphill."', 'I''m a half-vampire, half-mortal who protects the mortal race, while slaying evil vampires.', 'https://www.dropbox.com/s/0jq0jmcsbbowv6b/profile_0002_Blade.jpg?raw=1');
INSERT INTO heroes (name, quote, about_me, image_url) VALUES ('"Mikey" (Michelangelo)', '"Cowabunga!"', 'I''m the most agile of my brothers. My training as a ninja is superb, but my skateboarding and dancing give me the edge. I’m an extremely good fighter—try not to find out.', 'https://www.dropbox.com/s/dvz2nstquidqlvv/profile_0001_Mikey.jpg?raw=1');
INSERT INTO heroes (name, quote, about_me, image_url) VALUES ('Lara Croft', '"Somebody''s superhero"', 'I’m a highly intelligent, athletic, AND beautiful English archaeologist-adventurer who ventures INTO ancient, hazardous tombs AND ruins around the world.', 'https://www.dropbox.com/s/gqsv0urbjbtzbtt/profile_0000_LaraCroft.jpg?raw=1');


CREATE TABLE relationship_types (
    id serial PRIMARY key,
    type varchar(20) UNIQUE NOT NULL
);

INSERT INTO relationship_types (type) VALUES ('Friend');
INSERT INTO relationship_types (type) VALUES ('Enemy');

CREATE TABLE relationships (
    id serial PRIMARY key,
    hero1_id INTEGER REFERENCES heroes (id),
    hero2_id INTEGER REFERENCES heroes (id),
    type_id INTEGER REFERENCES relationship_types (id)
);

INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (1, 2, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 1, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 3, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 1, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 2, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 3, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 5, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 1, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 2, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 5, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (5, 1, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (5, 3, 1);

CREATE TABLE abilities (
    id serial PRIMARY key,
    ability VARCHAR(50)
);

INSERT INTO abilities (ability) VALUES ('Super Strength');
INSERT INTO abilities (ability) VALUES ('Flying');
INSERT INTO abilities (ability) VALUES ('Telekinesis');
INSERT INTO abilities (ability) VALUES ('Telepathy');
INSERT INTO abilities (ability) VALUES ('Frost Breath');
INSERT INTO abilities (ability) VALUES ('Super Speed');
INSERT INTO abilities (ability) VALUES ('X-Ray Vision');

CREATE TABLE ability_hero (
    id serial PRIMARY key,
    hero_id INTEGER REFERENCES heroes (id),
    ability_id INTEGER REFERENCES abilities (id)
);

INSERT INTO ability_hero (hero_id, ability_id) VALUES (1, 5);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 3);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 4);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (3, 1);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 2);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 6);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (5, 7);
 