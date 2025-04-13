USE ｒｅｓｔａｕｒａｎｔ;

CREATE TABLE customers (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE orders (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	customer_id INT,  -- NOT NULL 제거!
	menu_item VARCHAR(50) NOT NULL,
	table_number INT,
	FOREIGN KEY (customer_id) REFERENCES customers(id)
		ON DELETE SET NULL
);
