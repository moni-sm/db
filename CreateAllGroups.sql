BEGIN TRANSACTION;

INSERT INTO "inspectserver_userrole" ("id","roleDescription")
 VALUES (1,'Manager QC'),
 (2,'Inspector QC'),
 (3,'Admin'),
 (4,'QC Anchor');

INSERT INTO "jobs_jitemsetstate" ("slug","name","stype") 
VALUES ('D','Done',2),
 ('O','Open',0),
 ('I','In Progress',1);

INSERT INTO "jobs_jitemstate" ("slug","name","stype") 
VALUES ('O','Open',0),
 ('1','InProgress',1),
 ('2','Done',2);


COMMIT;
