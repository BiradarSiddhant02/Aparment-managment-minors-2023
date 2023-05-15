Create table owner (
    owner_id int NOT NULL, 
    owner_Name varchar(255),
    owner_pass int, 
    owner_dob date, 
    owner_sex varchar(255), 
    PRIMARY KEY (owner_id)
);

Create table tenant (
    tenant_id int NOT NULL, 
    tenant_name varchar(255),
    ten_dob date, 
    PRIMARY KEY (tenant_id)
);

Create table block (
    block_no int NOT NULL, 
    block_name varchar(255),
    PRIMARY KEY(block_no)
);

Create table room (
    room_no int NOT NULL, 
    owner_id int,
    tenant_id int, 
    block_no int,
    PRIMARY KEY (room_no), 
    FOREIGN KEY (owner_id) REFERENCES owner (owner_id), 
    FOREIGN KEY (tenant_id) REFERENCES tenant (tenant_id),
    FOREIGN KEY (block_no) REFERENCES block (block_no)
);

Create table room_details(
    room_no int NOT NULL,
    room_type varchar(255),
    parking_slot varchar(255),
    PRIMARY KEY (room_no)
);

Create table block_admin (
    admin_id int NOT NULL, 
    admin_name varchar(255),
    block_no int, 
    PRIMARY KEY(admin_id),
    FOREIGN KEY (block_no) REFERENCES block (block_no)
);

Create table rental (
    room_no int, 
    monthly_rent int,
    FOREIGN KEY (room_no) REFERENCES room (room_no)
);

Create table employee (
    emp_id int NOT NULL, 
    emp_name varchar(255),
    emp_DOB date,
    emp_salary int, 
    block_no int,
    admin_id int,
    PRIMARY KEY (emp_id), 
    FOREIGN KEY (block_no) REFERENCES block (block_no),
    FOREIGN KEY (admin_id) REFERENCES block_admin (admin_id)
);