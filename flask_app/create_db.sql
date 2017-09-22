
CREATE USER 'admin'@'mysql' IDENTIFIED BY 'admin';
CREATE DATABASE framgiatw CHARACTER SET utf8;
GRANT ALL ON framgiatw.* to admin@mysql;
FLUSH PRIVILEGES;
