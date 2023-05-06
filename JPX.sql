create database JPX;
use JPX;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARBINARY(256)
);
			
INSERT INTO JPX.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('jose'), UPPER('lopez'), 'joseloepz1454@correo.com',AES_ENCRYPT
('password', '$2a$12$JpfZ.9CMGR7G5S2BHsUQ.eDOgJIyajTtlmcuE49Bz7Dm06S8ycQSC'));
INSERT INTO JPX.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('jUAN'), UPPER('jOSE'), 'juanjose02@gmail.com',AES_ENCRYPT
('Jeanpool14', '$2a$12$JpfZ.9CMGR7G5S2BHsUQ.eDOgJIyajTtlmcuE49Bz7Dm06S8ycQSC'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$12$JpfZ.9CMGR7G5S2BHsUQ.eDOgJIyajTtlmcuE49Bz7Dm06S8ycQSC') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 4;    

select * from users_tbl;

DROP DATABASE JPX;