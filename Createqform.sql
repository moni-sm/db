BEGIN TRANSACTION;

INSERT INTO "inspectserver_qform" ("id","FormNo","FormVersionNo","FormPublishedDate","FormIsActive","FormCreatedBy","Department_id","QualityStandard_id","SerialNo","Title","FormCreatedDate","QAP_id") VALUES (1,'1111',1,'2023-11-02 02:40:34',true,'NAvy',3,2,'1111','FORM 1','2025-05-21',NULL),
 (2,'1112',1,'2023-11-02 02:41:11',true,'NAvy',3,2,'1112','FORM 2','2025-05-21',NULL),
 (3,'1113',1,'2023-11-02 02:41:35',true,'NAvy',3,2,'1113','FORM 3','2025-05-21',NULL),
 (4,'1114',1,'2024-03-11 06:47:20',true,'NAvy',3,2,'1114','FORM 4','2025-05-21',NULL),
 (5,'1115',1,'2024-03-11 08:50:06',true,'NAvy',4,2,'115','FORM 5','2025-05-21',NULL),
 (6,'113',0,'2025-02-20 00:47:13',true,'NAvy',2,2,'113','FORM 6','2025-05-21',NULL),
 (7,'114',1,'2025-02-20 00:49:52',true,'NAvy',2,2,'114','FORM 7','2025-05-21',NULL),
 (8,'115',1,'2025-02-20 00:50:44',true,'NAvy',2,2,'115','FORM 8','2025-05-21',NULL),
 (9,'116',1,'2025-02-20 00:51:26',true,'NAvy',2,2,'116','FORM 9','2025-05-21',NULL),
 (10,'004',1,'2025-04-02 14:35:14',true,'Geetha Das',4,2,'QCE074RE00','FORM 10','2025-05-21',NULL),
 (11,'020',0,'2019-11-01 10:13:13',true,'NAvy',2,2,'QCLW074RE','STAGE/ ONSITE INSPECTION DATA SHEET: OFFLOADED/ INHOUSE JOBS','2025-05-21',NULL),
 (12,'PH--1',1,'2025-05-14 06:55:27',true,'Ge',3,2,'QCHRE001','INSPECTION OF PAINTING JOBS','2025-05-21',NULL),
 (13,'117',1,'2025-06-23 13:39:33',true,'NAvy',2,2,'117','OnsiteIIR','2025-06-23',5);

COMMIT;
