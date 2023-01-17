-- test 데이터베이스를 사용한다.
use test;

-- 테이블 생성
create table cust (
	cust_id int not null primary key,
    pwd varchar(50) not null,
    name varchar(50) not null,
    tel varchar(15) not null,
	email varchar(50) not null,
    gender char(1) not null );
 
-- 레코드 삽입
insert into cust( cust_id, pwd, name, tel, email, gender) values (1, '123','kim','010-1234-5678','he@naver.com','m');

create table person (
	personid int primary key,
    lastname varchar(20),
    firstname varchar(20),
    age int
    );
    
create table orders (
	orderid int primary key,
    ordernumber int,
    personid int,
    foreign key (personid) references person(personid)
    );
    
insert into person(personid, lastname, firstname, age) values(1,'kim','he',10);
insert into person(personid, lastname, firstname, age) values(2,'kim2','he',11);
insert into person(personid, lastname, firstname, age) values(3,'kim3','he',12);
insert into person(personid, lastname, firstname, age) values(4,'kim4','he',13);

insert into orders(orderid, ordernumber, personid) values(1,1000,1);
insert into orders(orderid, ordernumber, personid) values(2,10000,2);
insert into orders(orderid, ordernumber, personid) values(3,5000,3);
insert into orders(orderid, ordernumber, personid) values(4,3500,4);
insert into orders(orderid, ordernumber, personid) values(5,6600,2);

select * from person;
select * from orders;


-- shop 예제 ERD SQL문

-- 1단계 주테이블 2개 생성. cust, item
-- 테이블 생성
create table cust (
	cust_id int not null primary key,
    pwd varchar(50) not null,
    name varchar(50) not null,
    tel varchar(15) not null,
	email varchar(50) not null,
    gender char(1) not null
);
create table item(
	item_id int primary key,
    item_name varchar(100),
    price int not null,
    rdate datetime,
    cnt int
);
    
-- 보조테이블 cart 생성
create table cart(
	id int primary key,
    cust_id int not null,
    item_id int not null,
    cnt int not null,
    rate datetime,
    foreign key(cust_id) references cust(cust_id),
    foreign key(item_id) references item(item_id)
);

create table orders(
	order_id int not null primary key,
    cust_id int not null,
    price int not null,
    location varchar(100),
    pay_id varchar(50) not null,
    foreign key (cust_id) references cust(cust_id)
);

create table orders_detail(
	detail_id int not null primary key,
    delivery varchar(30),
    order_id int not null,
    item_id int not null,
    cnt int not null,
    foreign key (order_id) references orders(order_id),
    foreign key (item_id) references item(item_id)
);

select * from cust;
select * from item;
select * from cart;
select * from orders;
select * from orders_detail;

create table cust(
	cust_id varchar(20) primary key,
    cust_pw varchar(20) not null,
    cust_name varchar(20) not null,
    cust_addr varchar(100) not null,
    cust_pn varchar(25) not null,
    cust_email varchar(5) not null
)
COLLATE='utf8mb4_general_ci'
;

create table res(
	res_id varchar(20) primary key,
    res_name VARCHAR(20) NOT NULL,
    res_kind VARCHAR(10) NOT NULL,
    res_addr VARCHAR(50) NOT NULL,
    res_logo VARCHAR(50) NOT NULL,
    res_logo1 VARCHAR(50) NOT NULL,
    res_logo2 VARCHAR(50) NOT NULL,
    res_map VARCHAR(50) NOT NULL,
    res_menu VARCHAR(50) NOT NULL
)
COLLATE='utf8mb4_general_ci'
;

create table rv(
	rv_id varchar(20) primary key,
    res_id varchar(20) not null,
    cust_id varchar(20) not null,
    rv_time varchar(10) not null,
    rv_cnt int(5) not null,
    foreign key (res_id) references res (res_id),
	foreign key (cust_id) references cust (cust_id)
)
COLLATE='utf8mb4_general_ci'
;

select * from cust;
select * from res;
select * from rv;

INSERT INTO res (res_id, res_kind, res_addr) VALUES ('1','주꾸미요리','서울 강동구 천호대로158길 14');
INSERT INTO res (res_logo) VALUES(LOAD_FILE('/CH_cj/cjlogo.png'));