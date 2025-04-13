USE ｒｅｓｔａｕｒａｎｔ;

CREATE TABLE customers (
	id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,  -- 사용자 고유 ID, 자동으로 1씩 증가, 기본키
    customer_id INT NOT NULL,              -- 주문한 고객의 ID (필수)
    menu_item VARCHAR(50) NOT NULL,        -- 주문한 메뉴 이름
    table_number INT,                      -- 테이블 번호 (범위 제한 없음)
    FOREIGN KEY (customer_id) REFERENCES customers(id)  -- 외래키 : part_id는 teams 테이블의 id와 연결
);