USE ｒｅｓｔａｕｒａｎｔ;

INSERT INTO customers (id, name, phone_number) VALUES
(1, '전모씨', '010-1111-9999'),
(2, '김모씨', '010-2222-8888'),
(3, '이모씨', '010-3333-7777');

INSERT INTO orders (customer_id, menu_item, table_number) VALUES
(1, '삼겹살', 10),
(2, '청국장', 1),
(3, '돈까스', 5);
