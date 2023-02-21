-- phase 2 -----------------------------------



-- create tables -----------------------------

CREATE TABLE IF NOT EXISTS public.appointments
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    clock time without time zone NOT NULL,
    day character varying(255) COLLATE pg_catalog."default" NOT NULL,
    date date NOT NULL,
    doctor_id bigint NOT NULL,
    patient_id bigint,
    duration_as_min integer NOT NULL,
    CONSTRAINT appointment_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.appointments
    OWNER to postgres;


-- -------------------------------------------------


CREATE TABLE IF NOT EXISTS public.doctors
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    lastname character varying COLLATE pg_catalog."default" NOT NULL,
    expertise character varying COLLATE pg_catalog."default" NOT NULL,
    age integer NOT NULL,
    national_id character varying COLLATE pg_catalog."default" NOT NULL,
    mobile_number character varying COLLATE pg_catalog."default" NOT NULL,
    serial_number character varying COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    birthdate date NOT NULL,
    CONSTRAINT doctors_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.doctors
    OWNER to postgres;

-- -------------------------------------------------




CREATE TABLE IF NOT EXISTS public.files
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    patient_id bigint NOT NULL,
    doctor_id bigint NOT NULL,
    CONSTRAINT files_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.files
    OWNER to postgres;


-- -------------------------------------------------


CREATE TABLE IF NOT EXISTS public.patients
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    lastname character varying COLLATE pg_catalog."default" NOT NULL,
    father_name character varying COLLATE pg_catalog."default" NOT NULL,
    age integer NOT NULL,
    height integer NOT NULL,
    national_id character varying COLLATE pg_catalog."default" NOT NULL,
    mobile_number character varying COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    city character varying COLLATE pg_catalog."default" NOT NULL,
    birthdate date NOT NULL,
    CONSTRAINT patients_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.patients
    OWNER to postgres;

-- -------------------------------------------------

CREATE TABLE IF NOT EXISTS public.papers
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    appointment_id bigint NOT NULL,
    file_id bigint NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT papers_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.papers
    OWNER to postgres;







-- seed database -----------------------------


INSERT INTO public.appointments(
	id, clock, day, date, doctor_id, patient_id, duration_as_min) VALUES 
	(DEFAULT, '08:00:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '08:30:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '09:00:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '09:30:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '10:00:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '10:30:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '11:00:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '11:30:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '12:00:00', 'sunday', '2022-12-01', 1, 0 , 30),
	(DEFAULT, '12:30:00', 'sunday', '2022-12-01', 1, 5 , 30),
	(DEFAULT, '08:00:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '08:30:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '09:00:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '09:30:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '10:00:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '10:30:00', 'sunday', '2022-12-01', 2, 5 , 30),
	(DEFAULT, '11:00:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '11:30:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '12:00:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '12:30:00', 'sunday', '2022-12-01', 2, 0 , 30),
	(DEFAULT, '08:00:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '08:30:00', 'sunday', '2022-12-01', 3, 5 , 30),
	(DEFAULT, '09:00:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '09:30:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '10:00:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '10:30:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '11:00:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '11:30:00', 'sunday', '2022-12-01', 3, 3 , 30),
	(DEFAULT, '12:00:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '12:30:00', 'sunday', '2022-12-01', 3, 0 , 30),
	(DEFAULT, '08:00:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '08:30:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '09:00:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '09:30:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '10:00:00', 'sunday', '2022-12-01', 4, 1 , 30),
	(DEFAULT, '10:30:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '11:00:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '11:30:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '12:00:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '12:30:00', 'sunday', '2022-12-01', 4, 0 , 30),
	(DEFAULT, '08:00:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '08:30:00', 'monday', '2022-12-02', 1, 4 , 30),
	(DEFAULT, '09:00:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '09:30:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '10:00:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '10:30:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '11:00:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '11:30:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '12:00:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '12:30:00', 'monday', '2022-12-02', 1, 0 , 30),
	(DEFAULT, '08:00:00', 'monday', '2022-12-02', 2, 5 , 30),
	(DEFAULT, '08:30:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '09:00:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '09:30:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '10:00:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '10:30:00', 'monday', '2022-12-02', 2, 1 , 30),
	(DEFAULT, '11:00:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '11:30:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '12:00:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '12:30:00', 'monday', '2022-12-02', 2, 0 , 30),
	(DEFAULT, '08:00:00', 'monday', '2022-12-02', 3, 2 , 30),
	(DEFAULT, '08:30:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '09:00:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '09:30:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '10:00:00', 'monday', '2022-12-02', 3, 3 , 30),
	(DEFAULT, '10:30:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '11:00:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '11:30:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '12:00:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '12:30:00', 'monday', '2022-12-02', 3, 0 , 30),
	(DEFAULT, '08:00:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '08:30:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '09:00:00', 'monday', '2022-12-02', 4, 1 , 30),
	(DEFAULT, '09:30:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '10:00:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '10:30:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '11:00:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '11:30:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '12:00:00', 'monday', '2022-12-02', 4, 0 , 30),
	(DEFAULT, '12:30:00', 'monday', '2022-12-02', 4, 0 , 30);




INSERT INTO public.doctors(
	id, name, lastname, expertise, age, national_id, mobile_number, serial_number, description, birthdate) VALUES
	(DEFAULT, 'ali', 'abedi', 'Allergists', 22, 2051235115, '09373763224', '17235125', 'first and good doctor\r\n', '2000-12-02'),
	(DEFAULT, 'hamid', 'mohammadi', 'Cardiologists', 32, 2051455123, '09374263251', '17235125', 'second and kind doctor\r\n', '1990-12-02'),
	(DEFAULT, 'ahmad', 'mahmoodi', 'Neurologists', 27, 2059648223, '09374512245', '11233498', 'thrid and expert doctor', '1995-12-02'),
	(DEFAULT, 'hassan', 'rezaie', 'Radiologists', 30, 2094785624, '09356324431', '324726321', 'forth and professional doctor ', '1992-12-02'),
	(DEFAULT, 'omid', 'salehi', 'Cardiologists', 27, 2057658290, '091245808257', '11233498', 'fifth and expert doctor', '1981-01-02'),
	(DEFAULT, 'reza', 'sadeghi', 'Neurologists', 47, 2052349083, '09354765107', '11233498', 'sixth and expert doctor', '1975-12-02');




INSERT INTO public.files(
	id, patient_id, doctor_id) VALUES
	(DEFAULT, 3, 1),
	(DEFAULT, 4, 4),
	(DEFAULT, 2, 2),
	(DEFAULT, 1, 3);



INSERT INTO public.patients(
	id, name, lastname, father_name, age, height, national_id, mobile_number, description, city, birthdate) VALUES 
	(DEFAULT, 'reza', 'hoseini', 'ali', 25, 174, 2058774614, '09366697151', 'first person and he is sick', 'babol', '1997-07-16'),
	(DEFAULT, 'hosein', 'reza poor', 'alireza', 40, 180, 2058465541, '09364897522', 'second paitient', 'amol', '1982-08-24'),
	(DEFAULT, 'nima', 'jafari', 'siavash', 15, 160, 2147483647, '09359058451', 'third person and he is here for checkup', 'sari', '2007-01-26'),
	(DEFAULT, 'sara', 'bozorgi', 'hassan', 24, 178, 2058475519, '09365881122', 'forth paitient', 'tehran', '1998-08-24'),
	(DEFAULT, 'hedie', 'ahmad poor', 'mohammad', 15, 160, 2147483647, '09119413651', 'fifth person and he is here for checkup', 'sari', '1981-10-06'),
	(DEFAULT, 'noshad', 'ghaemi', 'ahmadreza', 15, 160, 2147483647, '09129057351', 'sixth person and he is here for checkup', 'sari', '1992-05-12');




INSERT INTO public.papers(
	id, appointment_id, file_id, description) VALUES 
	(DEFAULT, 3, 1,'something 1'),
	(DEFAULT, 4, 4,'something 2'),
	(DEFAULT, 2, 2,'something 3'),
	(DEFAULT, 1, 3,'something 4');



-- phase 3 -----------------------------------



SELECT MAX(age) FROM "patients";

SELECT MIN(age) FROM "patients";

SELECT SUM(age) FROM "doctors";

SELECT COUNT(*) FROM "doctors";

SELECT AVG(age) FROM "patients";

SELECT * FROM "doctors" WHERE birthdate > '1990-01-01';

-- for those who has a file 
select "patients".name, "patients".lastname ,count("files".id) as "file count" from 
	("patients" JOIN "files" ON "files".patient_id = "patients".id) 
	group by "patients".id;

-- each patients files
SELECT name , lastname, COUNT("files".id ) FROM "patients" LEFT OUTER JOIN "files" ON "patients".id = "files".patient_id GROUP BY "patients".id;

SELECT clock,day,date FROM "patients" RIGHT OUTER JOIN "appointments" ON "patients".id = "appointments".patient_id ;

SELECT  name , lastname, clock,day,date FROM "patients" FULL OUTER JOIN "appointments" ON "patients".id = "appointments".patient_id ;

SELECT name,lastname, birthdate FROM doctors UNION SELECT name,lastname, birthdate FROM patients order by birthdate desc;

UPDATE "patients" set lastname="jafarian" where id = 3;

UPDATE "doctors" set expertise="Urologists" where id = 4;

DELETE  FROM "patients" WHERE id = 2;


-- phase 4 -----------------------------------


-- CURSOR

BEGIN;
DECLARE 
    cursor1 CURSOR FOR SELECT * FROM patients;
-- 	gets 2 every time
	FETCH 2 FROM cursor1;
COMMIT;




BEGIN;
DECLARE 
    cursor2 CURSOR FOR SELECT * FROM doctors;
-- 	gets a record every time
	FETCH 1 FROM cursor1;
COMMIT;



-- transaction


-- no record for id = 7
BEGIN;
UPDATE doctors SET name = javid 
    WHERE name = 'ahmad';
savepoint first_savepoint;
UPDATE patients SET name = hoda 
    WHERE id = 7;
rollback

COMMIT;



-- works fine
BEGIN;
insert into appointments(id, clock, day, date, doctor_id, patient_id, duration_as_min) values
						(DEFAULT, '09:00:00', 'monday', '2022-12-02', 4, 1 , 30);
   
savepoint second_savepoint;
INSERT INTO public.papers(id, appointment_id, file_id, description) VALUES 
							(DEFAULT, 4, 1,'something new');
   
rollback

COMMIT;


-- view


CREATE VIEW all_names AS
    SELECT name,lastname, birthdate FROM doctors UNION SELECT name,lastname, birthdate FROM patients

SELECT * FROM all_names;
DROP VIEW all_names;




CREATE MATERIALIZED VIEW all_reserved_appointments AS
	SELECT clock, day, date FROM appointments where patient_id != 0;
	

select * from all_reserved_appointments;
DROP MATERIALIZED VIEW all_reserved_appointments;


-- index 


SELECT * FROM patients
WHERE city = 'babol';

EXPLAIN SELECT *
FROM patients
WHERE city = 'babol';

CREATE INDEX city_babol 
ON patients(city);

EXPLAIN SELECT *
FROM patients
WHERE city = 'babol';






SELECT serial_number FROM doctors;


EXPLAIN SELECT *
FROM doctors;

CREATE INDEX serial_numbers_index 
ON doctors(serial_number);

EXPLAIN SELECT *
FROM doctors;


-- 





select * from files;

create or replace procedure make_file(
   doctor_id int,
   patient_id int, 
  
)
language plpgsql    
as $$
begin

 INSERT INTO public.files(
	id, patient_id, doctor_id) VALUES
	(DEFAULT, patient_id, doctor_id),

    commit;
end;$$

call make_file(1,2);

select * from files;




-- 


select * from papers;

create or replace procedure papers_update(
   paper_id int,
   description_new text,
)
language plpgsql    
as $$
begin

  update papers 
    set description = description_new;
    where id = paper_id;
	
	
    commit;
end;$$

call description(1,"updated description");

select * from papers;



-- udf























