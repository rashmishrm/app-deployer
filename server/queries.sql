use app_deployer_db;

create table project (
project_id INT NOT NULL AUTO_INCREMENT,
project_name VARCHAR(25),
project_url VARCHAR(45),
PRIMARY KEY (project_id)
);

create table user (
user_name VARCHAR(25) NOT NULL,
user_pass VARCHAR(25) NOT NULL,
PRIMARY KEY (user_name)
);
alter table project ADD topic VARCHAR(40);
alter table project ADD user_name VARCHAR(25), 
ADD FOREIGN KEY (user_name) REFERENCES user(user_name);

INSERT INTO app_deployer_db.project (project_name, project_url) 
VALUES("proj1","URL_1");

select * from app_deployer_db.user;