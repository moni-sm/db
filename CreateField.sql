BEGIN TRANSACTION;

INSERT INTO "inspectserver_uom" ("id","UOM","ConversionFormula","DefaultUOM_id") VALUES (1,'mm',NULL,NULL),
 (2,'cm','x * 10',1),
 (3,'gm',NULL,NULL),
 (4,'kg','* 1000',3),
 (5,'ohm',NULL,NULL),
 (6,'m',NULL,NULL),
 (7,'Volts',NULL,NULL),
 (8,'°C',NULL,NULL),
 (9,'°F',NULL,NULL),
 (10,'litre',NULL,NULL),
 (11,'Amps',NULL,NULL),
 (12,'Ω',NULL,NULL),
 (13,'mΩ',NULL,NULL),
 (14,'s',NULL,NULL),
 (15,'min',NULL,NULL),
 (16,'hr',NULL,NULL),
 (17,'dB',NULL,NULL),
 (18,'"',NULL,NULL),
 (19,'None',NULL,NULL),
 (20,'MMS',NULL,NULL),
 (21,'KW','',NULL),
 (22,'HP','',21),
 (23,'RPM','',NULL),
 (24,'Hz','',NULL),
 (25,'mH',NULL,NULL),
 (26,'MΩ','*1000',12),
 (27,'mm/sec',NULL,NULL);
CREATE INDEX IF NOT EXISTS "inspectserver_uom_DefaultUOM_id_ce2c5e24" ON "inspectserver_uom" (
	"DefaultUOM_id"
);
COMMIT;
