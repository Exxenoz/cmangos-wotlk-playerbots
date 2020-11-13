CREATE DATABASE `wotlkmangos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE DATABASE `wotlklogs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE DATABASE `wotlkcharacters` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE DATABASE `wotlkrealmd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE DATABASE `wotlkplayerbots` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER IF NOT EXISTS 'mangos'@'localhost' IDENTIFIED BY 'mangos';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON `wotlkmangos`.* TO 'mangos'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON `wotlklogs`.* TO 'mangos'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON `wotlkcharacters`.* TO 'mangos'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON `wotlkrealmd`.* TO 'mangos'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON `wotlkplayerbots`.* TO 'mangos'@'localhost';
