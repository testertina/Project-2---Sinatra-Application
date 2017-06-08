DROP TABLE IF EXISTS post;

CREATE TABLE post (

  id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  cuisine VARCHAR(20), TEXT NOT NULL,
  location TEXT NOT NULL,
  cost TEXT, VARCHAR(4) CHECK (cost == '£' OR cost == '££' OR cost == '£££' OR cost == '££££'),
  opening_times TEXT

);

INSERT INTO post (name , cuisine , location , cost , opening_times , restaurant_id) VALUES ('Bill''s Richmond Restaurant' , 'European' , 'Richmond' , '££', "9am-10pm");
INSERT INTO post (name , cuisine , location , cost , opening_times , restaurant_id) VALUES ('Bill''s Richmond Restaurant' , 'European' , 'Richmond' , '££', "9am-10pm");
INSERT INTO post (name , cuisine , location , cost , opening_times , restaurant_id) VALUES ('Bill''s Richmond Restaurant' , 'European' , 'Richmond' , '££', "9am-10pm");
INSERT INTO post (name , cuisine , location , cost , opening_times , restaurant_id) VALUES ('Bill''s Richmond Restaurant' , 'European' , 'Richmond' , '££', "9am-10pm");
