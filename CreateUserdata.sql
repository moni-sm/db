BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "inspectserver_userdata" (
	"id"	integer NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"first_name"	varchar(150) NOT NULL,
	"last_name"	varchar(150) NOT NULL,
	"name"	varchar(100) NOT NULL UNIQUE,
	"email"	varchar(100) NOT NULL UNIQUE,
	"date_joined"	datetime NOT NULL,
	"is_admin"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_superuser"	bool NOT NULL,
	"department_id"	bigint,
	"role_id"	bigint,
	"username"	varchar(10) NOT NULL UNIQUE,
	"security_answer"	varchar(255) NOT NULL,
	"security_question"	varchar(255) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("department_id") REFERENCES "inspectserver_department"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("role_id") REFERENCES "inspectserver_userrole"("id") DEFERRABLE INITIALLY DEFERRED
);
INSERT INTO "inspectserver_userdata" ("id","password","last_login","first_name","last_name","name","email","date_joined","is_admin","is_active","is_staff","is_superuser","department_id","role_id","username","security_answer","security_question")VALUES (1,'pbkdf2_sha256$720000$b4xau4MAG8AKENmEqbUw4D$eXUEq06HioqZJlicWNpWW2UqUdKqXr7foRAFevZNtAE=','2025-03-09 13:24:40.994522','','','admin','dasgeetha@hotmail.com','2023-08-16 16:06:25.863586',false,true,true,true,1,1,'TEST0001','Amma','Whatis the name of your mother?'),
 (3,'pbkdf2_sha256$1000000$Tk0K83hbi6WoOlVx44CTba$x8QCJGdpFLCN/jlgimbRGnuIAmEVG0bnGVrqiTZBAl4=',NULL,'','','Test','test@insp.com','2023-08-16 16:16:17',false,true,false,false,4,2,'QE0002','Amma','What is the name of your mother?'),
 (4,'pbkdf2_sha256$720000$ZtkLjIbmLAFyeCOd4PEVVM$LCRyyK521QVAQIEWQTmzwaXKaiBj/ASBp/esG9etWOU=',NULL,'Geetha','Das','Geetha Das','gdas@insp.com','2023-08-17 08:31:59',true,true,true,true,2,1,'TEST0003','Amma','What is the name of your mother?'),
 (5,'pbkdf2_sha256$720000$B78Oi0JAVWFWESh7egATLa$iFG9GMXwRCVE1wGDXXmuhHSnYDseDRo+a9mozxsAWcA=','2025-02-20 00:34:19.807689','','','Geetha','dasgeetha20@gmail.com','2025-01-21 09:59:56',false,true,true,true,3,2,'TEST0004','Amma','Whatis the name of your mother?'),
 (6,'insp@1234',NULL,'','','Test 1','test1@insp.com','2025-01-30 05:58:23.406701',true,true,false,false,3,1,'TEST0005','Amma','Whatis the name of your mother?'),
 (7,'pbkdf2_sha256$720000$39GoeMMCN4INOFRKzzHb7y$Uh8ZWxxW5joKb3wtyfw1Fm9xolyDCpIvB4feKW9uirM=',NULL,'','','Test 2','test2@insp.com','2025-01-30 06:52:38',false,true,true,false,1,4,'TEST0006','Amma','What is the name of your mother?'),
 (8,'pbkdf2_sha256$1000000$weBJbAHvJSyeAOkPDufsWQ$dJWgrqGimfuAnqKWPNjdgytDo5K46vTHao1ODmeXnu4=','2025-07-08 11:25:19.831522','','','test3','test3@insp.com','2025-03-09 13:25:25',true,true,true,true,2,3,'TEST0007','Fatima','What was the name of your first school?'),
 (9,'pbkdf2_sha256$1000000$HbhEDWAwGiDwkLkQ3FOPi1$vJq9OW+ioyD5fTYNYcPdisPP5MmeWrpAVBvxzf7q6uE=','2025-07-02 15:46:09.206957','','','QCLW Manager','lw1@insp.com','2025-04-21 10:14:06',false,true,false,false,2,1,'LW0001','Amma','Whatis the name of your mother?'),
 (10,'pbkdf2_sha256$1000000$XdlsmdYdRnQ93HQeDuUL38$GuinYVx4nf9E71LTpSUYNAhbxU6SYF0OR2EmFG94DQ8=','2025-07-01 04:19:39.693909','','','LW Inspector 1','lw2@insp.com','2025-04-21 10:15:20',false,true,false,false,2,2,'LW0002','Amma','What is the name of your mother?'),
 (11,'pbkdf2_sha256$1000000$McIYdWQEPI3wOjPTxdSQ8w$8PHqMCbsq52ztz3Jxw7kM9dcsNNUmWh2tAHfzGZPQ+A=','2025-06-05 04:21:35.516426','','','Hull inspector 1','H1@insp.com','2025-04-21 10:16:07',false,true,false,false,3,2,'HU0001','Amma','What is the name of your mother?'),
 (12,'pbkdf2_sha256$1000000$gm2ooWMtYKX0G9LtR2sVJ7$ffAfeg3sQkQnA0NCcaNYvVhHkgrSVfHushstPzL7cHs=','2025-06-28 13:43:28.628506','','','Manager QCE','mqce@insp.com','2025-05-13 22:53:22',false,true,false,false,4,1,'QE0001','Amma','What is the name of your mother?'),
 (13,'pbkdf2_sha256$1000000$tXMi2hItyh4xe82pMfBZI7$NUKUPmIYtd5WdjJJowDTTm3wwIDggcUw9y2a2qYVLn0=','2025-07-06 07:13:03.844754','','','Manager QCH','qch@insp.com','2025-05-13 22:55:49',false,true,false,false,3,1,'QH0001','Amma','What is the name of your mother?'),
 (14,'pbkdf2_sha256$1000000$leorTxMJF4BnzbL7DYJlBr$z0jgK4B8gYqaqo+N01Sybn6p3A3pcNncuJrz/qDz1x0=','2025-07-08 08:29:11.472432','','','QC Anchor','ac@insp.com','2025-06-02 08:49:59',false,true,false,false,1,4,'QC0001','Amma','What is the name of your mother?'),
 (15,'pbkdf2_sha256$1000000$NH0sEXssiTVlii0KTG2snp$f6fpfmK/hWLxyKCD3KkqBZ6BTiqO0Ecfsh/Ai0WNpmY=',NULL,'','','T1Name','T1@insp.com','2025-06-12 09:35:59',false,true,false,false,2,2,'T1','Amma','What is the name of your mother?'),
 (16,'pbkdf2_sha256$1000000$T7maiCmwVSec3Utn8SuHs0$eUl9THT5kjrjvN0Om4n1DILr36C73b0jBQdMrQdWvZc=','2025-06-20 09:33:30.266072','','','T2 Name','t2@insp.com','2025-06-12 09:45:01',false,true,false,false,3,2,'T2','Amma','What is the name of your mother?');
CREATE INDEX IF NOT EXISTS "inspectserver_userdata_department_id_d12bcac9" ON "inspectserver_userdata" (
	"department_id"
);
CREATE INDEX IF NOT EXISTS "inspectserver_userdata_role_id_17eaf541" ON "inspectserver_userdata" (
	"role_id"
);
COMMIT;
