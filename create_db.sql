
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
CREATE DATABASE framgiatw CHARACTER SET utf8;
GRANT ALL ON framgiatw.* to admin@localhost;
FLUSH PRIVILEGES;
