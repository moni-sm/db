BEGIN TRANSACTION;

INSERT INTO "inspectserver_measurementtype" ("id","MeasurementType","DefaultUOM_id") VALUES (4,'Length',6),
 (5,'Temperature',8),
 (6,'Time',14),
 (7,'Weight',4),
 (8,'Electric Current',11),
 (9,'Voltage',7),
 (10,'Sound/Noise',17),
 (11,'InspectionInfo',19),
 (12,'Thrust',20),
 (13,'images',19),
 (14,'Information',19),
 (15,'Remarks',19),
 (16,'Resistance',12),
 (17,'Power',21),
 (18,'Speed',23),
 (19,'Frequency',24),
 (20,'Vibration',27),
 (21,'winding inductance',25);
 
INSERT INTO "inspectserver_qjobstage" ("id","StageShortName","StageDescription") 
VALUES (1,'Stage 1','Stage 1'),
 (2,'Stage 2','Stage 2'),
 (3,'Stage 3','Stage 3');

COMMIT;
