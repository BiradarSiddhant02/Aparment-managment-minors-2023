1.SELECT emp_name, emp_salary FROM `employee` ORDER BY emp_salary DESC;

2.SELECT tenant.tenant_id, tenant.tenant_name, room.room_no, block.block_no, block.block_name FROM tenant, room, block WHERE tenant.tenant_id=room.tenant_id AND room.block_no=block.block_no GROUP BY tenant_id;

3.SELECT tenant.tenant_id, tenant.tenant_name, room.room_no, rental.monthly_rent FROM room RIGHT JOIN tenant ON room. tenant_id=tenant.tenant_id JOIN rental ON room.room_no=rental.room_no;

4.SELECT room_type,room.block_no FROM room_details JOIN room ON room_details.room_no=room.room_no where room.block_no=3 AND room_details.room_type="3 bhk delux";

5.SELECT owner_Name, owner.owner_id, room.room_no, SUM(rental.monthly_rent) FROM owner 30IN room ON owner.owner_id=room.owner_id RIGHT JOIN rental ON rental.room_no=room.room_no GROUP BY owner_id;

6.SELECT room_type, COUNT (room_type) FROM room_details RIGHT JOIN room ON room.room_no=room_details.room_no GROUP BY room_type;

7.SELECT block.block_name, count (room.room_no) FROM block JOIN room ON block.block_no=room.block_no GROUP BY block.block_no;

8.SELECT emp_id, emp_name, emp_DOB FROM employee WHERE emp_DOB>'1990-03-05¹ AND emp_DOB<'1999-07-03';

9.SELECT room_type,count(parking_slot) FROM room_details GROUP BY room_type
 
10.SELECT owner.owner_id,owner_Name,room_type FROM owner join room ON room.owner_id=owner.owner_id RIGHT JOIN room_details.room_no=room.room_no WHERE
owner_sex='female' AND room_type='3 bhk delux' GROUP BY owner_Name;