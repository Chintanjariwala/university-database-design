
-- Populate Address table
insert into Address values('65432', '2001 M Rent','Hialeah','SF');
insert into Address values('23121','2121 B Street','Belle Grove','NY');
insert into Address values('09867','2	North	Street','Coconut Beach','NY');
insert into Address values('98765','31 Westside street','Parkgate',	'JK');
insert into Address values('09809','71	MC	Street','Markland','FY');
insert into Address values('33328', 'Apt 14', 'Davie','FL');
insert into Address values('33389','8210 SW 41 CT','Davie','FL');
insert into Address values('09956','8130 NW 21 ST','Coconut Beach', 'FL');
insert into Address values('98764','Ap 21','Coral Springs',	'FL');
insert into Address values('09803','71	MC	Street','Miami','FL');

-- Populate Person table
insert into Person values('865361231','Patty','P','Preston','F','01-APR-72','23121','0988342133');
insert into	Person values('875435123','Megan','M','Woods','F','21-OCT-89','09867','5674398764');
insert into	Person values('875676767','Chris','V','Seilr','M','26-JUL-78','98765','6775545422');
insert into	Person values('864542278','John','L','Carry','M','10-AUG-81','09809','652457732');
insert into Person values('975164333','Shaival','P','Shah','M','12-DEC-93','33328','9856712572');
insert into Person values('743678246','Gaurav','P','Jain','M','01-JUN-94','33389','0988342781');
insert into	Person values('952561853','Shreeraj','F','Pawar','M','21-OCT-93','09956','5674398757');
insert into	Person values('942567194','Jaimin','V','Patel','M','26-JUL-94','98764','6775543674');
insert into	Person values('864169257','Priyana','L','Chwada','F','10-AUG 94','09803','6524569843');

-- Populate Employee table
insert into	Employee values('865361231');
insert into	Employee values('875435123');
insert into	Employee values('875676767');
insert into	Employee values('864542278');

-- Populate Department table
insert into	Department values(3,'Pharmacy','PHMD', '098762286','CN543');
insert into	Department values(1,'Computer Science','CISC', '779646655','CS123');
insert into	Department values(2,'Information Technology','MSIT','658537372','IT456');

-- Populate Staff table
insert into	Staff values('765439876','Dean',1);
insert into	Staff values('865361231','Coordinator',2);
insert into	Staff values('875435123','Dean',3);
insert into	Staff values('875676767','Coordinator',3);
insert into	Staff values('864542278','Dean',2);

-- Populate Faculty table
insert into Faculty	values('865361231',	'MCA','Assistant Professor','PART-TIME',1);
insert into	Faculty	values('875676767',	'MPhil','Assistant Professor','PART-TIME',2);
insert into	Faculty	values('875435123',	'PHD','Permanent Professor','FULL-TIME',3);
insert into Faculty	values('765439876',	'PHD','Permanent Professor','FULL-TIME',1);


-- Populate Course table
insert into	Course values('CS2','Computer Networking',3,1);
insert into	Course values('CS3','Operating Systems',3,2);
insert into	Course values('CS4','Computer Architecture',3,2);
insert into	Course values('CS5','Data Strucutures',3,2);

-- Populate COURSE_PREREQUISITE table
insert	into COURSE_PREREQUISITE values	('CS1','CS3');
insert	into COURSE_PREREQUISITE values	('CS2','CS4');


-- Populate SALARY_SCALE table
insert	into SALARY_SCALE values ('Lecturer',	'part-time',	110000);
insert	into SALARY_SCALE values ('Lecturer',	'full-time',	123431.54);
insert	into SALARY_SCALE values ('Associate Professor',	'full-time',	753532.45);


-- Populate Student table
insert into	Student values('975164333',	'SN201','BCA',1,3,'graduate');
insert into	Student	values('743678246',	'SN202','MCA',3,1,'graduate');
insert into	Student	values('952561853',	'SN203','PHD',2,3,'phd');
insert into	Student	values('942567194',	'SN204','BSC',1,3,'freshman');
insert into	Student	values('864169257',	'SN205','PHD',null,1,'phd');



-- Populate Dependent table
insert into	Dependent values('Richard','098762286','Spouse');
insert into	Dependent values('Michel','779646655',	'Son');
insert into	Dependent values('Kim maggio','753338862','Spouse');
insert into	Dependent values('Garry','962371274','daughter');
insert into Dependent values('Sheron','658537372','Son');

-- Populate WORKS_FOR table
insert into	WORKS_FOR values('765439876',1);
insert into	WORKS_FOR values('865361231',3);
insert into	WORKS_FOR values('875676767',2);
insert into	WORKS_FOR values('875435123',1);

-- Populate Section table
insert into	Section values(1,'summer',2017,'monday','11:00AM','Desantis301', '865361231','CS2');
insert into	Section	values(2,'winter',2017,'tuesday','10:00AM','Desantis401', '875676767','CS2');
insert into	Section	values(1,'summer',2017,'fridat','09:00AM', 'Desantis401', '865361231','CS1');
insert into	Section	values(1,'summer',2017,	'thursday','04:30PM',	'Desantis401', '875435123','CS4');
insert into	Section	values(1,'summer',2017,	'monday','06:30PM', 'Desantis401','765439876','CS5');

-- Populate STUDY_PLAN table
insert into	STUDY_PLAN values('864169257','CS1');
insert into	STUDY_PLAN values('942567194','CS2');
insert into	STUDY_PLAN values('952561853','CS3');
insert into	STUDY_PLAN values('743678246','CS4');

-- Populate Transcript table
insert into	Transcript values('952561853','CS1','A');
insert into	Transcript values('743678246','CS2','A+');
insert into	Transcript values('942567194','CS3','B');
insert into	Transcript values('864169257','CS1','B+');

-- Populate Grad_Student table
insert into	Grad_Student values(‘975164333’,’765439876’);
insert into	Grad_Student values(‘743678246’,’765439876’);
insert into	Grad_Student values(‘952561853’,’875435123’);
insert into	Grad_Student values(‘942567194’,’875676767’);
insert into	Grad_Student values(‘864169257’,’875676767’);



