CREATE TABLE customer (
		customer_id SERIAL PRIMARY KEY,
		first_name VARCHAR(50) NOT NULL,
		last_name VARCHAR(50) NOT NULL,
		phone VARCHAR (12) NOT NULL,
		email VARCHAR(50) NOT NULL
);



CREATE TABLE service (
		service_id SERIAL PRIMARY KEY,
		service_date TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
		type_of_service VARCHAR(100),
		price NUMERIC(6,2),
		customer_id INTEGER NOT NULL, 
		FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE invoice (
		invoice_id SERIAL PRIMARY KEY,
		purchase_date TIMESTAMP NOT NULL,
		price NUMERIC (7,2) NOT NULL,
		customer_id INTEGER NOT NULL,
		FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);



CREATE TABLE vehicle (
		vehicle_id SERIAL PRIMARY KEY,
		"year" INTEGER NOT NULL,
		make VARCHAR(20) NOT NULL,
		model VARCHAR(20) NOT NULL,
		edition VARCHAR(15),
		salesperson_id INTEGER NOT NULL,
		invoice_id INTEGER NOT NULL,
		service_ticlet_id INTEGER NOT NULL
);



CREATE TABLE salesperson (
		salesperson_id SERIAL PRIMARY KEY,
		first_name VARCHAR(50) NOT NULL,
		last_name VARCHAR(50) NOT NULL,
		employee_id VARCHAR(8) NOT NULL
);


CREATE TABLE Inventory(
		inventory_id SERIAL PRIMARY KEY,
		"year" INTEGER NOT NULL,
		make VARCHAR(20) NOT NULL,
		model VARCHAR(20) NOT NULL,
		price NUMERIC(7,2) NOT NULL
);

CREATE TABLE mechanic (
		mechanic_id SERIAL PRIMARY KEY,
		first_name VARCHAR(25) NOT NULL,
		last_name VARCHAR(25) NOT NULL,
		employee_idm VARCHAR(25) NOT NULL
);


CREATE TABLE service_ticket(
		service_ticket_id SERIAL PRIMARY KEY,
		service_id INTEGER NOT NULL,
		FOREIGN KEY (service_id) REFERENCES service(service_id),
		vehicle_id INTEGER NOT NULL, 
		FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id),
		mechanic_id INTEGER NOT NULL,
		FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);



CREATE TABLE service_record (
		service_record_id SERIAL PRIMARY KEY,
		vehicle_id INTEGER NOT NULL,
		FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id),
		service_id INTEGER NOT NULL,
		FOREIGN KEY (service_id) REFERENCES service(service_id),
		mechanic_id INTEGER NOT NULL,
		FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);



ALTER TABLE invoice
ADD COLUMN vehicle_id INTEGER REFERENCES vehicle(vehicle_id);

ALTER TABLE invoice
ADD COLUMN salesperson_id INTEGER REFERENCES salesperson(salesperson_id);



ALTER TABLE inventory
ADD COLUMN vehicle_id INTEGER REFERENCES vehicle(vehicle_id);



