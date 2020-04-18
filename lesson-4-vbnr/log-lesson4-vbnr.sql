апр.-18 15:30:13    SQL / User  INSERT INTO messages values
('1','2','3','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
('2','4','5','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
('3','6','7','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
('4','8','9','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
('5','10','15','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46')
    51  5   Успешно
апр.-18 15:28:21    SQL / User  delete from messages
    7   4   Успешно
апр.-18 15:25:23    SQL / User  delete from messages
where from_user_id = 10
    5   1   Успешно
апр.-18 15:23:58    SQL / User  INSERT INTO messages values
('1','2','3','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
('2','4','5','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
('3','6','7','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
('4','8','9','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
('5','10','15','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46')
    48  5   Успешно
апр.-18 15:20:56    SQL / User  INSERT INTO messages values
('1','1','2','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
('2','2','1','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
('3','3','1','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
('4','1','3','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
('5','1','5','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46')
    9       [1452] Cannot add or update a child row: a foreign key constraint fails (`vk`.`messages`, CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`))
апр.-18 15:20:18    SQL / User  insert into users (id, firstname, lastname, email, phone) values
('107', 'Reuben', 'Nienow', 'arlo50102@example.org', '9374071116'),
('200', 'Frederik', 'Upton', 'terrence.cartwright@example.org', '9127498182'),
('300', 'Unique', 'Windler', 'rupert55@example.org', '9921090703'),
('400', 'Norene', 'West', 'rebekah29@example.net', '9592139196'),
('500', 'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725')
    43  5   Успешно
апр.-18 15:06:43    SQL / User  UPDATE friend_requests
SET 
    status = 'declined',
    confirmed_at = now()
WHERE
    initiator_user_id = 5 and target_user_id = 36
--  and status = 'requested'
        145 1   Успешно
апр.-18 14:33:07    SQL / User  INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('14', '53', 'requested')    1       [1062] Duplicate entry '14-53' for key 'friend_requests.PRIMARY'
апр.-18 14:33:03    SQL / User  INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('15', '45', 'requested')    11  1   Успешно
апр.-18 14:32:59    SQL / User  INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('5', '36', 'requested') 3   1   Успешно
апр.-18 14:32:51    SQL / User  INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('7', '8', 'requested')  5   1   Успешно
апр.-18 14:32:38    SQL / User  INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('14', '53', 'requested')    5   1   Успешно
апр.-18 14:29:19    SQL / User  INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('1', '5', 'requested')  13      [1452] Cannot add or update a child row: a foreign key constraint fails (`vk`.`friend_requests`, CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`))
апр.-18 14:26:45    SQL / User  SELECT *
FROM users
WHERE id IN (1,2,30,4)
LIMIT 0, 200    10  3   Успешно
апр.-18 14:26:15    SQL / User  SELECT *
FROM users
WHERE firstname = 'Reuben'
LIMIT 0, 200    3   4   Успешно
апр.-18 14:25:53    SQL / User  SELECT *
FROM users
WHERE id = 5 AND firstname = 'Reuben'
LIMIT 0, 200    4       Успешно
апр.-18 14:20:48    SQL / User  SELECT *
FROM users
WHERE id = 5 OR firstname = 'Reuben'
LIMIT 0, 200    7   5   Успешно
апр.-18 14:16:31    SQL / User  SELECT *
FROM users
LIMIT 1 offset 5    6   1   Успешно
апр.-18 14:16:03    SQL / User  SELECT distinct firstname, lastname
FROM users
LIMIT 0, 200    8   102 Успешно
апр.-18 12:57:41    SQL / User  INSERT INTO media  
    (`id`) 
select 
    `id`
from users
where id = 1
    4   0   Успешно
апр.-18 12:46:41    SQL / User  INSERT INTO users
SET
    firstname = 'Иван',
    lastname = 'Диванов',
    email = 'ivan@mail.ru',
    phone = '987654321'
    5   1   Успешно
апр.-18 12:31:34    SQL / User  INSERT INTO users VALUES
('102', 'Reuben', 'Nienow', 'arlo515@example.org', NULL),
('103', 'Reuben', 'Nienow', 'arlo516@example.org', NULL),
('104', 'Reuben', 'Nienow', 'arlo517@example.org', NULL),
('105', 'Reuben', 'Nienow', 'arlo518@example.org', NULL)
    5   4   Успешно
апр.-18 12:25:32    SQL / User  INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('101', 'Dean', 'Satterfield', 'orin69@example.net', '9160120629')   71  1   Успешно
апр.-18 12:23:01    SQL / User  INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) 
VALUES ('58', 'Dean', 'Satterfield', 'orin69@example.net', '9160120629')    110     [1062] Duplicate entry '58' for key 'users.PRIMARY'
апр.-12 18:38:58    SQL / User script   CREATE TABLE `photos` (
    id SERIAL PRIMARY KEY,
    `album_id` BIGINT unsigned NOT NULL,
    `media_id` BIGINT unsigned NOT NULL,

    FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
)   3       [1824] Failed to open the referenced table 'photo_albums'
апр.-12 18:38:52    SQL / User script   DROP TABLE IF EXISTS `photos`   11  0   Успешно
апр.-12 18:38:52    SQL / User script   CREATE TABLE `photos` (
    id SERIAL PRIMARY KEY,
    `album_id` BIGINT unsigned NOT NULL,
    `media_id` BIGINT unsigned NOT NULL,

    FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
)   3       [1824] Failed to open the referenced table 'photo_albums'
апр.-12 18:38:51    SQL / User script   DROP TABLE IF EXISTS likes  5   0   Успешно
апр.-12 18:38:51    SQL / User script   CREATE TABLE likes(
    id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()

    -- PRIMARY KEY (user_id, media_id) – можно было и так вместо id в качестве PK
    -- слишком увлекаться индексами тоже опасно, рациональнее их добавлять по мере необходимости (напр., провисают по времени какие-то запросы)  

/* намеренно забыли, чтобы увидеть нехватку в ER-диаграмме
    , FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (media_id) REFERENCES media(id)
*/
)   12  0   Успешно
апр.-12 18:38:51    SQL / User script   DROP TABLE IF EXISTS `photo_albums` 4   0   Успешно
апр.-12 18:38:51    SQL / User script   CREATE TABLE `photo_albums` (
    `id` SERIAL,
    `name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
    PRIMARY KEY (`id`)
)   2       [1824] Failed to open the referenced table 'users'
апр.-12 18:38:50    SQL / User script   DROP TABLE IF EXISTS media_types    4   0   Успешно
апр.-12 18:38:50    SQL / User script   CREATE TABLE media_types(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

    -- записей мало, поэтому индекс будет лишним (замедлит работу)!
)   99  0   Успешно
апр.-12 18:38:50    SQL / User script   DROP TABLE IF EXISTS media  4   0   Успешно
апр.-12 18:38:50    SQL / User script   CREATE TABLE media(
    id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
    body text,
    filename VARCHAR(255),
    size INT,
    metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
)   6       [1824] Failed to open the referenced table 'users'
апр.-12 18:38:49    SQL / User script   DROP TABLE IF EXISTS communities    8   0   Успешно
апр.-12 18:38:49    SQL / User script   CREATE TABLE communities(
    id SERIAL PRIMARY KEY,
    name VARCHAR(150),

    INDEX communities_name_idx(name)
)   13  0   Успешно
апр.-12 18:38:49    SQL / User script   DROP TABLE IF EXISTS users_communities  3   0   Успешно
апр.-12 18:38:49    SQL / User script   CREATE TABLE users_communities(
    user_id BIGINT UNSIGNED NOT NULL,
    community_id BIGINT UNSIGNED NOT NULL,
  
    PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
)   2       [1824] Failed to open the referenced table 'users'
апр.-12 18:38:47    SQL / User script   DROP TABLE IF EXISTS friend_requests    4   0   Успешно
апр.-12 18:38:47    SQL / User script   CREATE TABLE friend_requests (
    -- id SERIAL PRIMARY KEY, -- изменили на композитный ключ (initiator_user_id, target_user_id)
    initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
    -- `status` TINYINT UNSIGNED, -- в этом случае в коде хранили бы цифирный enum (0, 1, 2, 3...)
    requested_at DATETIME DEFAULT NOW(),
    confirmed_at DATETIME,
    
    PRIMARY KEY (initiator_user_id, target_user_id),
    INDEX (initiator_user_id), -- потому что обычно будем искать друзей конкретного пользователя
    INDEX (target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
)   22      [1824] Failed to open the referenced table 'users'
апр.-12 18:38:43    SQL / User script   DROP TABLE IF EXISTS messages   4   0   Успешно
апр.-12 18:38:43    SQL / User script   CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
)   2       [1824] Failed to open the referenced table 'users'
апр.-12 18:38:40    SQL / User script   DROP TABLE IF EXISTS `profiles` 4   0   Успешно
апр.-12 18:38:40    SQL / User script   CREATE TABLE `profiles` (
    user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
    photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id) -- что за зверь в целом?
        ON UPDATE CASCADE -- как это работает? Какие варианты?
        ON DELETE restrict -- как это работает? Какие варианты?
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
)   28      [1824] Failed to open the referenced table 'users'
апр.-12 18:38:24    SQL / User script   DROP DATABASE IF EXISTS vk  133 11  Успешно
апр.-12 18:38:24    SQL / User script   CREATE DATABASE vk  2   1   Успешно
апр.-12 18:38:24    SQL / User script   USE vk  2   0   Успешно
апр.-12 18:38:24    SQL / User script   DROP TABLE IF EXISTS users  13  0   Успешно
апр.-12 18:38:24    SQL / User script   CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
    phone BIGINT, UNIQUE,
    INDEX users_phone_idx(phone), -- как выбирать индексы?
    INDEX users_firstname_lastname_idx(firstname, lastname)
)   9       [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
    INDEX users_phone_idx(phone), -- как выбирать индексы?
 ' at line 6
апр.-12 18:34:39    SQL / User  FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
)   2       [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) R' at line 1
апр.-12 18:34:02    SQL / User  CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
    phone BIGINT, UNIQUE,

)   36      [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',

)' at line 6
апр.-12 18:32:46    SQL / User  CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
    phone BIGINT, UNIQUE,
    INDEX users_phone_idx(phone), -- как выбирать индексы?
    INDEX users_firstname_lastname_idx(firstname, lastname)
)   43      [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
    INDEX users_phone_idx(phone), -- как выбирать индексы?
 ' at line 6
апр.-12 18:32:04    SQL / User  USE vk  2   0   Успешно