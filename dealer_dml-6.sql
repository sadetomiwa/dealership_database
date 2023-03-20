
CREATE OR REPLACE PROCEDURE add_inventory("year" INTEGER, make VARCHAR, model VARCHAR, price NUMERIC(7,2) )
LANGUAGE plpgsql 
AS $$
BEGIN
	INSERT INTO inventory("year", make, model, price)
	VALUES ("year", make, model, price);
END;
$$;


CALL add_inventory( 2020, 'Nissan', 'GT-R', 87000);
CALL add_inventory(2001, 'Infinite', 'G-37', 56000); 
CALL add_inventory(2014, 'Toyota', 'Camry', 44000); 




CREATE OR REPLACE PROCEDURE add_customer(first_name VARCHAR, last_name VARCHAR, phone VARCHAR, email VARCHAR) 
LANGUAGE plpgsql 
AS $$
BEGIN
	INSERT INTO customer(first_name, last_name, phone, email)
	VALUES (first_name, last_name, phone, email);
END;
$$;


CALL add_customer('Jake', 'Paul', '281-330-8004', 'beatyaup@gmail.com');
CALL add_customer('Joe', 'Rogan', '444-444-9844', 'jre@gmail.com');




INSERT INTO salesperson(
	first_name,
	last_name,
	employee_id
) VALUES (
	'John',
	'Jones',
	401
),(
	'Cyril',
	'Gan',
	402
),(
	'Israel',
	'Adesanya',
	403
);

SELECT *
FROM salesperson;

INSERT INTO mechanic(
	first_name,
	last_name,
	employee_idm
) VALUES (
	'John',
	'Jones',
	501
),(
	'Cyril',
	'Gan',
	502
),(
	'Israel',
	'Adesanya',
	503
);


CREATE OR REPLACE PROCEDURE add_vehicle("year" INTEGER, make VARCHAR, model VARCHAR )
LANGUAGE plpgsql 
AS $$
BEGIN
	INSERT INTO add_vehicle("year", make, model)
	VALUES ("year", make, model);
END;
$$;


CALL add_vehicle (2020, Nissan GTR)



