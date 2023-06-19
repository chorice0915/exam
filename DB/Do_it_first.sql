"\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -uroot -p1234

create schema testblog;
use testblog;

create user 'testblog'@'%' identified by '1234';
grant all privileges on testblog.* to 'testblog'@'%';

CREATE TABLE users (
  idUsers       INT NOT NULL AUTO_INCREMENT,
  id            VARCHAR(50) NOT NULL,
  nick          VARCHAR(30) NOT NULL,
  pw            VARCHAR(30) NOT NULL,
  PRIMARY KEY(idUsers));

INSERT INTO users (id, nick, pw) 
      VALUES ('master@lol.com', '마스터이', '1234');
INSERT INTO users (id, nick, pw) 
      VALUES ('tester@hoon.com', '테스터훈', '1234');

CREATE TABLE posts (
  idposts             INT NOT NULL AUTO_INCREMENT,
  title               VARCHAR(30) NOT NULL,
  content             VARCHAR(2000) NOT NULL,
  writer              VARCHAR(30) NOT NULL,
  PRIMARY KEY(idposts));

INSERT INTO posts (title, content, writer) 
      VALUES ('제목 테스트입니다', '글 테스트입니다', 'tester');
      