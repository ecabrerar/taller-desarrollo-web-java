--------------------------------------------------------
--  File created - Wednesday-December-28-2011   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CITA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CITA_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10000 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CLIENTE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CLIENTE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10000 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PACIENTE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PACIENTE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 10000 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CITA
--------------------------------------------------------

  CREATE TABLE "CITA" 
   (	"ID" NUMBER(*,0), 
	"FECHA" DATE, 
	"PACIENTE_ID" NUMBER(*,0), 
	"DOCTOR_ID" NUMBER(*,0), 
	"RAZON" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "CLIENTE" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50), 
	"APELLIDO" VARCHAR2(50), 
	"TELEFONO" VARCHAR2(15), 
	"CALLE" VARCHAR2(40), 
	"APARTAMENTO" VARCHAR2(50), 
	"CIUDAD" VARCHAR2(50), 
	"PAIS_ID" NUMBER(*,0), 
	"USUARIO" VARCHAR2(20), 
	"CLAVE" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table DOCTOR
--------------------------------------------------------

  CREATE TABLE "DOCTOR" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50), 
	"APELLIDO" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table ESPECIES
--------------------------------------------------------

  CREATE TABLE "ESPECIES" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table PACIENTE
--------------------------------------------------------

  CREATE TABLE "PACIENTE" 
   (	"ID" NUMBER(*,0), 
	"CLIENTE_ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50), 
	"GENERO" VARCHAR2(15), 
	"RAZA_ID" NUMBER(*,0), 
	"FECHA_NACIMIENTO" DATE, 
	"PESO" NUMBER(*,0), 
	"DOCTOR_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PAIS
--------------------------------------------------------

  CREATE TABLE "PAIS" 
   (	"ID" NUMBER(*,0), 
	"DESCRIPCION" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table RAZA
--------------------------------------------------------

  CREATE TABLE "RAZA" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50), 
	"ESPECIED_ID" NUMBER(*,0)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE ESPECIES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ESPECIES
Insert into ESPECIES (ID,NOMBRE) values (2,'Felino');
Insert into ESPECIES (ID,NOMBRE) values (1,'Canino');

---------------------------------------------------
--   END DATA FOR TABLE ESPECIES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE CITA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CITA

---------------------------------------------------
--   END DATA FOR TABLE CITA
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PACIENTE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PACIENTE

---------------------------------------------------
--   END DATA FOR TABLE PACIENTE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DOCTOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DOCTOR
Insert into DOCTOR (ID,NOMBRE,APELLIDO) values (3,'Jhonathan','Coach');
Insert into DOCTOR (ID,NOMBRE,APELLIDO) values (1,'Susan','Lewis');
Insert into DOCTOR (ID,NOMBRE,APELLIDO) values (4,'Peter','Banks');
Insert into DOCTOR (ID,NOMBRE,APELLIDO) values (2,'Mary','Lane');

---------------------------------------------------
--   END DATA FOR TABLE DOCTOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE CLIENTE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into CLIENTE

---------------------------------------------------
--   END DATA FOR TABLE CLIENTE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PAIS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PAIS
Insert into PAIS (ID,DESCRIPCION) values (1,'República Dominicana');
Insert into PAIS (ID,DESCRIPCION) values (4,'Estados Unidos de America');
Insert into PAIS (ID,DESCRIPCION) values (6,'Jamaica');
Insert into PAIS (ID,DESCRIPCION) values (10,'Brasil');
Insert into PAIS (ID,DESCRIPCION) values (11,'Uruguay');
Insert into PAIS (ID,DESCRIPCION) values (12,'Perú');
Insert into PAIS (ID,DESCRIPCION) values (2,'Puerto Rico');
Insert into PAIS (ID,DESCRIPCION) values (3,'Venezuela');
Insert into PAIS (ID,DESCRIPCION) values (8,'Mexico');
Insert into PAIS (ID,DESCRIPCION) values (14,'Canada');
Insert into PAIS (ID,DESCRIPCION) values (15,'Bolivia');
Insert into PAIS (ID,DESCRIPCION) values (5,'Haiti');
Insert into PAIS (ID,DESCRIPCION) values (7,'Colombia');
Insert into PAIS (ID,DESCRIPCION) values (9,'Argentina');
Insert into PAIS (ID,DESCRIPCION) values (13,'Cuba');

---------------------------------------------------
--   END DATA FOR TABLE PAIS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE RAZA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into RAZA
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (1,'Rottweiler',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (4,'Chihuahueño',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (5,'Chow chow',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (7,'Dobermann',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (10,'Gato Europeo',2);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (12,'Lince Ibérico',2);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (11,'Puma',2);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (2,'Boston terrier',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (6,'Dálmata',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (8,'Pastor alemán',1);
Insert into RAZA (ID,NOMBRE,ESPECIED_ID) values (9,'Gato Silvestre',2);

---------------------------------------------------
--   END DATA FOR TABLE RAZA
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "CITA" ADD CONSTRAINT "CITA_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "CITA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "CITA" MODIFY ("FECHA" NOT NULL ENABLE);
 
  ALTER TABLE "CITA" MODIFY ("PACIENTE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CITA" MODIFY ("DOCTOR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CITA" MODIFY ("RAZON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "CLIENTE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("APELLIDO" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("CALLE" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("CIUDAD" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("PAIS_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("USUARIO" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE" MODIFY ("CLAVE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "DOCTOR" ADD CONSTRAINT "DOCTOR_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "DOCTOR" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DOCTOR" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "DOCTOR" MODIFY ("APELLIDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ESPECIES
--------------------------------------------------------

  ALTER TABLE "ESPECIES" ADD CONSTRAINT "ESPECIE_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "ESPECIES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ESPECIES" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PACIENTE
--------------------------------------------------------

  ALTER TABLE "PACIENTE" ADD CONSTRAINT "PACIENTE_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "PACIENTE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("GENERO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("RAZA_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("PESO" NOT NULL ENABLE);
 
  ALTER TABLE "PACIENTE" MODIFY ("DOCTOR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAIS
--------------------------------------------------------

  ALTER TABLE "PAIS" ADD CONSTRAINT "PAIS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "PAIS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "PAIS" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RAZA
--------------------------------------------------------

  ALTER TABLE "RAZA" ADD CONSTRAINT "RAZA_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "RAZA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "RAZA" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "RAZA" MODIFY ("ESPECIED_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Index CITA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CITA_PK" ON "CITA" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLIENTE_PK" ON "CLIENTE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index DOCTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DOCTOR_PK" ON "DOCTOR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ESPECIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ESPECIE_PK" ON "ESPECIES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PACIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PACIENTE_PK" ON "PACIENTE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PAIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAIS_PK" ON "PAIS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index RAZA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAZA_PK" ON "RAZA" ("ID") 
  ;
--------------------------------------------------------
--  Ref Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "CITA" ADD CONSTRAINT "CITA_DOCTOR_FK" FOREIGN KEY ("DOCTOR_ID")
	  REFERENCES "DOCTOR" ("ID") ENABLE;
 
  ALTER TABLE "CITA" ADD CONSTRAINT "CITA_PACIENTE_FK" FOREIGN KEY ("PACIENTE_ID")
	  REFERENCES "PACIENTE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CLIENTE_PAIS_FK" FOREIGN KEY ("PAIS_ID")
	  REFERENCES "PAIS" ("ID") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table PACIENTE
--------------------------------------------------------

  ALTER TABLE "PACIENTE" ADD CONSTRAINT "PACIENTE_CLIENTE_FK" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES "CLIENTE" ("ID") ENABLE;
 
  ALTER TABLE "PACIENTE" ADD CONSTRAINT "PACIENTE_DOCTOR_FK" FOREIGN KEY ("DOCTOR_ID")
	  REFERENCES "DOCTOR" ("ID") ENABLE;
 
  ALTER TABLE "PACIENTE" ADD CONSTRAINT "PACIENTE_RAZA_FK" FOREIGN KEY ("RAZA_ID")
	  REFERENCES "RAZA" ("ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table RAZA
--------------------------------------------------------

  ALTER TABLE "RAZA" ADD CONSTRAINT "RAZA_ESPECIE_FK" FOREIGN KEY ("ESPECIED_ID")
	  REFERENCES "ESPECIES" ("ID") ENABLE;
--------------------------------------------------------
--  DDL for View DMRV_GLOSSARIES
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DMRV_GLOSSARIES" ("GLOSSARY_ID", "GLOSSARY_OVID", "GLOSSARY_NAME", "FILE_NAME", "DESCRIPTION", "INCOMPLETE_MODIFIERS", "CASE_SENSITIVE", "UNIQUE_ABBREVS", "SEPARATOR_TYPE", "SEPARATOR_CHAR", "DATE_PUBLISHED", "PUBLISHED_BY", "PERSISTENCE_VERSION", "VERSION_COMMENTS") AS 
  select  Glossary_ID, Glossary_OVID, Glossary_Name, File_Name, Description, Incomplete_Modifiers, Case_Sensitive, Unique_Abbrevs, Separator_Type, Separator_Char, Date_Published, Published_By, Persistence_Version, Version_Comments from DMRS_GLOSSARIES;
--------------------------------------------------------
--  DDL for View DMRV_GLOSSARY_TERMS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "DMRV_GLOSSARY_TERMS" ("TERM_ID", "TERM_OVID", "TERM_NAME", "SHORT_DESCRIPTION", "ABBREV", "ALT_ABBREV", "PRIME_WORD", "CLASS_WORD", "MODIFIER", "QUALIFIER", "GLOSSARY_ID", "GLOSSARY_OVID", "GLOSSARY_NAME") AS 
  select  Term_ID, Term_OVID, Term_Name, Short_Description, Abbrev, Alt_Abbrev, Prime_Word, Class_Word, Modifier, Qualifier, Glossary_ID, Glossary_OVID, Glossary_Name from DMRS_GLOSSARY_TERMS;
