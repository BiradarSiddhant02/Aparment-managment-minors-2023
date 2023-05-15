insert into owner(owner_id,owner_Name,owner_pass,owner_dob,owner_sex) values
(12001,'Ben Meyer',10001,'1990-01-10','male'),
(12002,'Tom Handy',10002,'1998-01-31' ,'male'),
(12003,'Justin Time',10003,'1979-02-28','male'),
(12004,'Tim Holland',10004,'1990-04-14','male'),
(12005,'Prim Kran',10005,'2000-03-15','female'),
(12006,'Hilmond Jones',10006,'1980-02-16','female'),
(12007,'Dollahan Mine',10007,'1975-12-18','male'),
(12008,'Otty Jill',10008,'1989-11-24','male'),
(12009,'Prim Etime',10009,'2000-01-01','female'),
(12010,'Yondo Mason',10010,'1983-09-09','female');

insert into tenant(tenant_id,tenant_Name,ten_dob) values
(22001,'Yim Poor','1998-08-10'),
(22002,'Jobnot Handy','1997-01-06'),
(22003,'Partim Ejob','1999-10-18'),
(22004,'Minim Ummoney','1992-07-16'),
(22005,'Mybrok Ewalet','2001-12-05'),
(22006,'Timwas Tedmoney','1987-02-26'),
(22007,'Fewcents Plis','1987-02-26'),
(22008,'Dogma House','1998-08-26'),
(22009,'Liveon Streets','2000-02-15'),
(22010,'Alltim Epoor','1997-12-16'),
(22011,'Acent Jobs','1997-11-23'),
(22012,'Somejo Bisgud','1996-09-26'),
(22013,'Gamb Leaddict','2000-06-25'),
(22014,'Alltim Estarve','1989-12-26'),
(22015,'Miond Rugs','1997-10-16');

insert into block (block_no, block_name)VALUES
(1,'Tranquil'),
(2,'Peace'),
(3,'Musical');

insert into room (room_no, owner_id, tenant_id, block_no) VALUES
('001', 12010, 22001, 1),
('002', 12002, 22002, 1),
('003', 12001, 22003, 1),
('004', 12004, 22004, 1),
('005', 12006, 22005, 1),
('006', 12003, 22006, 1),
('007', 12005, 22007, 2),
('008', 12007, 22008, 2),
('009', 12008, 22009, 2),
('010', 12009, 22010, 2),
('011', 12001, 22011, 2),
('012', 12004, 22012, 2),
('013', 12010, 22013, 3),
('014', 12001, 22014, 3),
('015', 12004, 22015, 3),
('016', 12009, 22001, 3),
('017', 12006, 22002, 3),
('018', 12005, 22003, 3);

insert into room_details (room_no, room_type, parking_slot) VALUES
('001','3 bhk delux','g001'),
('002','2 bhk delux','g002'),
('003','3 bhk normal','g003'),
('004','3 bhk normal','g004'),
('005','3 bhk delux','g005'),
('006','2 bhk delux','g006'),
('007','3 bhk delux','g007'),
('008','3 bhk delux','g008'),
('009','3 bhk delux','g009'),
('010','3 bhk delux','g010'),
('011','3 bhk normal','g011'),
('012','3 bhk normal','g012'),
('013','3 bhk delux','g013'),
('014','3 bhk normal','g014'),
('015','3 bhk normal','g015'),
('016','3 bhk delux','g016'),
('017','2 bhk delux','g017'),
('018','3 bhk delux','g018');

insert into block_admin (admin_id, admin_name,block_no)VALUES
(001,'Ben Meyer',1),
(002,'Prim Kran',2),
(003,'Otty Jill',3);

insert into rental (room_no, monthly_rent)VALUES
('001',600),
('002',600),
('003',750),
('004',800),
('005',600),
('006',750),
('007',600),
('008',500),
('009',600),
('010',700),
('011',800),
('012',890),
('013',760),
('014',600),
('015',600),
('016',900),
('017',880),
('018',700);

insert into employee (emp_id, emp_name, emp_DOB, emp_salary, block_no, admin_id) VALUES
('001', 'Yur Brooke', '1992-03-1', 1200, 1, 001),
('002', 'Taby Muddy', '1998-01-10', 1250, 1, 001),
('003', 'Kit Fisto', '1981-03-5', 1100, 2, 002),
('004', 'Plo Koon', '1999-07-23', 1050, 2, 002),
('005', 'Din Djarin', '1991-5-5', 1150, 3, 003),
('006', 'Grief Karga', '1981-10-3', 2030, 3, 003);