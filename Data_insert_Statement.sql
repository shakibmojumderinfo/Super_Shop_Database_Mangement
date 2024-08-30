--SHOP_INFO------------ 
INSERT INTO shop_info (shop_id, shop_name, address, phone, email, website, social_link, establish_date, 
logo, registration_no, registration_issue, created_by, updated_by)
VALUES (100, 'nass super shop', '294/1, kawran bazar, dhaka', '01407175774', 'supershop@gmail.com', 'www.nassshop.com' ,'https://www.facebook.com/@super_shop', TO_DATE('2024-07-01', 'YYYY-MM-DD'),
NULL, 123456789, '30-JAN-2000', 'admin', 'admin');

SELECT *
FROM shop_info;

--DEPARTMENT TABLE-----------------------
INSERT INTO departments (department_id, department_name, shop_id, establish_date, created_by, updated_by)
VALUES (10, 'sales', 100, TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'admin', 'admin');

INSERT INTO departments (department_id, department_name, shop_id, establish_date, created_by, updated_by)
VALUES (20, 'administrative', 100, TO_DATE('2000-01-01', 'YYYY-MM-DD'),'admin', 'admin');

INSERT INTO departments (department_id, department_name, shop_id, establish_date, created_by, updated_by)
VALUES (30, 'purchase', 100, TO_DATE('2000-01-01', 'YYYY-MM-DD'),'admin', 'admin');

INSERT INTO departments (department_id, department_name, shop_id, establish_date, created_by, updated_by)
VALUES (40, 'it', 100, TO_DATE('2000-01-01', 'YYYY-MM-DD'),'admin', 'admin');

SELECT *
FROM departments;
 --employees TABLE VALUE INSERT


--EMPLOYEES TABLE-----------------------
INSERT INTO employees (employee_id, employee_name, email, phone_number, hire_date, designation,
                       salary, commission_pct, incentive, department_id, created_by, updated_by)
VALUES (1, 'shakib mojumder', 'sakib01@gmail.com', '01811111111','01-FEB-2024', 'sales_man',
        32000, 0.12, 2000, 10, 'admin', 'admin');


INSERT INTO employees (employee_id, employee_name, email, phone_number, hire_date, designation,
                       salary, commission_pct, incentive, department_id, created_by, updated_by)
values(2, 'Nayem Islam', 'nayem02@gmail.com', '01822222222', '01-FEB-2024', 'Manager', 35000,
                        null, 2000,10, 'admin', 'admin');


INSERT INTO employees (employee_id, employee_name, email, phone_number, hire_date, designation,
                       salary, commission_pct, incentive, department_id, created_by, updated_by)
values(3, 'Shahadat Hossain', 'sahadat03@gmail.com', '01833333333', '05-FEB-2024', 'Purchase Agent', 32000,
                        0.7, 2000, 30, 'admin', 'admin');

INSERT INTO employees (employee_id, employee_name, email, phone_number, hire_date, designation,
                       salary, commission_pct, incentive, department_id, created_by, updated_by)
values(4, 'nahida', 'nahida04@gmail.com', '01344444444', '04-april-2024', 'it_prog', 35000,
null, null, 40, 'admin', 'admin');

INSERT INTO employees (employee_id, employee_name, email, phone_number, hire_date, designation,
                       salary, commission_pct, incentive, department_id, created_by, updated_by)
values(5, 'Asraful Islam', 'asraf05@gmail.com', '01355555555', '04-april-2024', 'Sales Man', 32000,
                        0.12, 8, 10, 'admin', 'admin');

select *
from employees;


--Table Name: User Register -----------
INSERT INTO USER_REGISTER(user_id, user_name, email, phone, password, employee_id, created_by, Updated_by)
VALUES( 'sakib01', 'Sakib Majumder', 'sakib01@gmail.com', '01712121212', '8', 1, 'admin','admin' );
  
INSERT INTO USER_REGISTER(user_id, user_name, email, phone, password, employee_id, created_by, Updated_by)
VALUES( 'nayem02', 'Nayem Islam', 'nayem02@gmail.com', '01922222222', '8', 2, 'admin','admin'  );
  
INSERT INTO USER_REGISTER(user_id, user_name, email, phone, password, employee_id, created_by, Updated_by)
VALUES( 'shahadat03', 'Shahadat Hossain', 'shahadat03@gmail.com', '01933333333', '8', 3, 'admin','admin'  );

INSERT INTO USER_REGISTER(user_id, user_name, email, phone, password, employee_id, created_by, Updated_by)
VALUES( 'nahida04', 'Nahida', 'nahida04@gmail.com', '01944444444', '8', 4, 'admin','admin'  );

INSERT INTO USER_REGISTER(user_id, user_name, email, phone, password, employee_id, created_by, Updated_by)
VALUES( 'asraful05', 'Asraful Islam', 'asraful05@gmail.com', '01955555555', '8', 5, 'admin','admin' );

select *
from USER_REGISTER;


--Table Name: category-------------
INSERT INTO CATEGORY(category_id, category_name,  created_by, Updated_by)
VALUES(500, 'Grocery', 'admin', 'admin');

INSERT INTO CATEGORY(category_id, category_name,  created_by, Updated_by)
VALUES( 600, 'Personal Care', 'admin', 'admin' );
  
INSERT INTO CATEGORY(category_id, category_name,  created_by, Updated_by)
VALUES( 700, 'Frozen', 'admin', 'admin');
  
INSERT INTO CATEGORY(category_id, category_name,  created_by, Updated_by)
VALUES( 800, 'Dairy', 'admin', 'admin');
  
INSERT INTO CATEGORY(category_id, category_name,  created_by, Updated_by)
VALUES( 900, 'Meat', 'admin', 'admin');

select *
from CATEGORY;


--Table Name: Sub category-------------
INSERT INTO SUB_CATEGORY(sub_category_id, sub_category_name,category_id, created_by, Updated_by)
VALUES( 501, 'Cookies',500, 'admin', 'admin');
  
INSERT INTO SUB_CATEGORY(sub_category_id, sub_category_name,category_id, created_by, Updated_by)
VALUES( 502, 'snacks',500, 'admin', 'admin');
  
INSERT INTO SUB_CATEGORY(sub_category_id, sub_category_name,category_id, created_by, Updated_by)
VALUES( 503, 'spices',500, 'admin', 'admin');
  
INSERT INTO SUB_CATEGORY(sub_category_id, sub_category_name,category_id, created_by, Updated_by)
VALUES( 601, 'Baby Product',600, 'admin', 'admin');
  
INSERT INTO SUB_CATEGORY(sub_category_id, sub_category_name,category_id, created_by, Updated_by)
VALUES( 602, 'Skin Care',600, 'admin', 'admin');


select *
from SUB_CATEGORY;



--Table Name: product_unit-------------------------------------------------

INSERT INTO product_unit(unit_id, unit_name, created_by, Updated_by)
VALUES('PCS','PIECES', 'admin', 'admin');

INSERT INTO product_unit(unit_id, unit_name, created_by, Updated_by)
VALUES('BX','BOXES', 'admin', 'admin');

INSERT INTO product_unit(unit_id, unit_name, created_by, Updated_by)
VALUES('KG','Kilogram', 'admin', 'admin');

INSERT INTO product_unit(unit_id, unit_name, created_by, Updated_by)
VALUES('GM','gram', 'admin', 'admin');

INSERT INTO product_unit(unit_id, unit_name, created_by, Updated_by)
VALUES('ltr','Kilolitter', 'admin', 'admin');

INSERT INTO product_unit(unit_id, unit_name, created_by, Updated_by)
VALUES('mm','millilitre', 'admin', 'admin');

select *
from product_unit;


--Table Name: product_info------------------------------------------------------
INSERT INTO product_info(product_id,product_name,unit_id,price,sub_category_id,stock_level,discount,brand_name,created_by, Updated_by)
VALUES(seq_product_id.NEXTVAL,'Noodles','KG', 200, 501, 80, 10, 'PRAN','admin', 'admin');

INSERT INTO product_info(product_id,product_name,unit_id,price,sub_category_id,stock_level,discount,brand_name,created_by, Updated_by)
VALUES(seq_product_id.NEXTVAL,'Chinigura Chal','KG', 170, 501, 320, null, 'Square','admin', 'admin');

INSERT INTO product_info(product_id,product_name,unit_id,price,sub_category_id,stock_level,discount,brand_name,created_by, Updated_by)
VALUES(seq_product_id.NEXTVAL,'Hanicom','PCS', 15, 502, 150, null, 'All Time','admin', 'admin');

INSERT INTO product_info(product_id,product_name,unit_id,price,sub_category_id,stock_level,discount,brand_name,created_by, Updated_by)
VALUES(seq_product_id.NEXTVAL,'Butter Bun Cake','PCS', 30, 502, 120, null, 'PRAN','admin', 'admin');

INSERT INTO product_info(product_id,product_name,unit_id,price,sub_category_id,stock_level,discount,brand_name,created_by, Updated_by)
VALUES(seq_product_id.NEXTVAL,'Olive oil','mm', 350, 602, 260, 15, 'BELIVES','admin', 'admin');

CREATE SEQUENCE seq_product_id
    start with 1
    INCREMENT BY 1
    MAXVALUE 999999
    NOCYCLE
    NOCACHE;
    
select *
from product_info;


--Table Name: Supplier_info----------------------------------------------------------------

INSERT INTO supplier_info (supplier_id, supplier_name, contact_no, ADDRESS, email,created_by, Updated_by)
VALUES (101,'Ruhul', '123-456-7890', '123 Pollobi, Mirpur', 'abc@example.com', 'admin', 'admin');

INSERT INTO supplier_info (supplier_id, supplier_name, contact_no, ADDRESS, email,created_by, Updated_by)
VALUES (102,'Tarek', '987-654-3210', '124 Shamoli, Agargaon', 'xyz@example.com','admin', 'admin');

INSERT INTO supplier_info (supplier_id, supplier_name, contact_no, ADDRESS, email,created_by, Updated_by)
VALUES(103,'Rafi', '555-123-4567', '150 Nurjahan, Polton', '123@example.com','admin', 'admin');

INSERT INTO supplier_info (supplier_id, supplier_name, contact_no, ADDRESS, email,created_by, Updated_by)
VALUES(104,'Shamim', '555-123-4597', 'Shamim Sarani, Shewrapara, Mirpur', '123@example.com','admin', 'admin');

INSERT INTO supplier_info (supplier_id, supplier_name, contact_no, ADDRESS, email,created_by, Updated_by)
VALUES(105,'Rifat', '555-123-4590', '150 Nujahan sharif palza, New Polton', '123@example.com','admin', 'admin');

select *
from supplier_info;

--Table Name: PURCHASE_MASTER
INSERT INTO purchase_master(purchase_id , supplier_id , bill_no, order_date , employee_id , created_by, Updated_by)
VALUES(seq_purchase_id.NEXTVAL, 101, 4401, SYSDATE, 3,'admin', 'admin');

INSERT INTO purchase_master(purchase_id , supplier_id , bill_no, order_date , employee_id , created_by, Updated_by)
VALUES(seq_purchase_id.NEXTVAL, 101, 4402, SYSDATE, 3,'admin', 'admin');

INSERT INTO purchase_master(purchase_id , supplier_id , bill_no, order_date , employee_id , created_by, Updated_by)
VALUES(seq_purchase_id.NEXTVAL, 102, 4403, SYSDATE, 3,'admin', 'admin');

INSERT INTO purchase_master(purchase_id , supplier_id , bill_no, order_date , employee_id , created_by, Updated_by)
VALUES(seq_purchase_id.NEXTVAL, 102, 4404, SYSDATE, 3,'admin', 'admin');

INSERT INTO purchase_master(purchase_id , supplier_id , bill_no, order_date , employee_id , created_by, Updated_by)
VALUES(seq_purchase_id.NEXTVAL, 105, 4405, SYSDATE, 3,'admin', 'admin');

CREATE SEQUENCE seq_purchase_id
    start with 1
    INCREMENT BY 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE;


    
--Table Name: PURCHASE DETAILS
INSERT INTO purchase_details(received_product_id ,product_id ,purchase_id ,unit_id , unit_price, quantity , created_by, Updated_by)
VALUES(20, 1, 1,'KG', 200, 20,'admin', 'admin');

INSERT INTO purchase_details(received_product_id ,product_id ,purchase_id ,unit_id , unit_price, quantity , created_by, Updated_by)
VALUES(21, 2, 2,'KG', 170, 20,'admin', 'admin');

INSERT INTO purchase_details(received_product_id ,product_id ,purchase_id ,unit_id , unit_price, quantity , created_by, Updated_by)
VALUES(22, 3, 3,'PCS', 15, 20,'admin', 'admin');

INSERT INTO purchase_details(received_product_id ,product_id ,purchase_id ,unit_id , unit_price, quantity , created_by, Updated_by)
VALUES(23, 4, 4,'PCS', 30, 20,'admin', 'admin');

INSERT INTO purchase_details(received_product_id ,product_id ,purchase_id ,unit_id , unit_price, quantity , created_by, Updated_by)
VALUES(24, 5, 5,'mm', 350, 20,'admin', 'admin');


--Table Name: Stock-------------------------------

INSERT INTO stock(stock_id,product_id,stock_adding_date,stock_update_date,brand,quantity,user_id)
VALUES(seq_stock_id.NEXTVAL, 2, sysdate, sysdate, 'PRAN', 200, 'shahadat03');

INSERT INTO stock(stock_id,product_id,stock_adding_date,stock_update_date,brand,quantity,user_id)
VALUES(seq_stock_id.NEXTVAL, 3, sysdate, sysdate, 'Square', 130, 'shahadat03');

INSERT INTO stock(stock_id,product_id,stock_adding_date,stock_update_date,brand,quantity,user_id)
VALUES(seq_stock_id.NEXTVAL, 5, sysdate, sysdate, 'Square', 150, 'shahadat03');

INSERT INTO stock(stock_id,product_id,stock_adding_date,stock_update_date,brand,quantity,user_id)
VALUES(seq_stock_id.NEXTVAL, 1, sysdate, sysdate, 'PRAN', 180, 'shahadat03');

INSERT INTO stock(stock_id,product_id,stock_adding_date,stock_update_date,brand,quantity,user_id)
VALUES(seq_stock_id.NEXTVAL, 4, sysdate, sysdate, 'BELIVES', 220, 'shahadat03');


CREATE SEQUENCE seq_stock_id
    start with 11
    INCREMENT BY 1
    MAXVALUE 999
    NOCYCLE
    NOCACHE;
    
SELECT *
FROM stock;



--Table Name: customer_info------------------------------------------
INSERT INTO customer_info (customer_id, customer_name, email, phone, address, description, created_by, Updated_by)
VALUES (seq_customer_id.nextval, 'mohammah ali', 'doe@example.com', '1234567890', 'Jatrabari', 'Regular customer', 'admin', 'admin');

INSERT INTO customer_info (customer_id, customer_name, email, phone, address, description, created_by, Updated_by)
VALUES (seq_customer_id.nextval, 'Hossain', 'hhh@example.com', '9876543210', 'Mirpur2', 'Preferred customer', 'admin', 'admin');

INSERT INTO customer_info (customer_id, customer_name, email, phone, address, description, created_by, Updated_by)
VALUES (seq_customer_id.nextval, 'Sakib Khan', 'sakib@example.com', '5551234567', 'Kawranbazar','VIP customer', 'admin', 'admin');

INSERT INTO customer_info (customer_id, customer_name, email, phone, address, description, created_by, Updated_by)
VALUES (seq_customer_id.nextval, 'Tamim Iqbal', 'tamim@example.com', '98765432134', 'Rangpur','VIP customer', 'admin', 'admin');

INSERT INTO customer_info (customer_id, customer_name, email, phone, address, description, created_by, Updated_by)
VALUES (seq_customer_id.nextval, 'Musfiqur Rahim', 'rahim@example.com', '12345678901', 'Bogura','Regular Customer', 'admin', 'admin');


CREATE SEQUENCE seq_customer_id
    start with 1000
    INCREMENT BY 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE;
   

--Table Name: sales_master--------------------------------------------------------
INSERT INTO sales_master(voucher_id,invoice_number,sales_date,customer_id,customer_name,address,mobile,total_amount,description,user_id,created_by, Updated_by)
VALUES(seq_voucher_id.NEXTVAL, seq_invoice_number.NEXTVAL, SYSDATE, NULL,'Sha Ali','Azimpur','01800000001',500,null,'shahadat03','admin', 'admin');

INSERT INTO sales_master(voucher_id,invoice_number,sales_date,customer_id,customer_name,address,mobile,total_amount,description,user_id,created_by, Updated_by)
VALUES(seq_voucher_id.NEXTVAL, seq_invoice_number.NEXTVAL, SYSDATE, NULL,'Ziaur Rahaman','Mirpur','01800000000',680,null,'shahadat03','admin', 'admin');

INSERT INTO sales_master(voucher_id,invoice_number,sales_date,customer_id,customer_name,address,mobile,total_amount,description,user_id,created_by, Updated_by)
VALUES(seq_voucher_id.NEXTVAL, seq_invoice_number.NEXTVAL, SYSDATE, NULL,'Rizvi','uttara','01800000002',300,null,'shahadat03','admin', 'admin');


INSERT INTO sales_master(voucher_id,invoice_number,sales_date,customer_id,customer_name,address,mobile,total_amount,description,user_id,created_by, Updated_by)
VALUES(seq_voucher_id.NEXTVAL, seq_invoice_number.NEXTVAL, SYSDATE, NULL,'Santa Islam','Mohammadpur','01800000003',50,null,'shahadat03','admin', 'admin');

INSERT INTO sales_master(voucher_id,invoice_number,sales_date,customer_id,customer_name,address,mobile,total_amount,description,user_id,created_by, Updated_by)
VALUES(seq_voucher_id.NEXTVAL, seq_invoice_number.NEXTVAL, SYSDATE, NULL,'Rakib','Gulshan','01800000005',1000,null,'shahadat03','admin', 'admin');

CREATE SEQUENCE seq_voucher_id
    start with 1
    INCREMENT BY 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE;
    
CREATE SEQUENCE seq_invoice_number
    start with 10101
    INCREMENT BY 1
    MAXVALUE 9999999
    NOCYCLE
    NOCACHE;
    
select *
from sales_master;

--Table Name: SALES DETAILS----------------------------------------------------

INSERT INTO sales_details(sales_id,product_id,voucher_id,quantity,tax,discount,created_by, Updated_by)
VALUES(seq_sales_id.NEXTVAL, 2,1, 05, 0.05, 10,'admin', 'admin');
 
INSERT INTO sales_details(sales_id,product_id,voucher_id,quantity,tax,discount,created_by, Updated_by)
VALUES(seq_sales_id.NEXTVAL, 3,2, 2, 0.05, 10,'admin', 'admin');

INSERT INTO sales_details(sales_id,product_id,voucher_id,quantity,tax,discount,created_by, Updated_by)
VALUES(seq_sales_id.NEXTVAL, 5,3, 6, 0.04, 10,'admin', 'admin');

INSERT INTO sales_details(sales_id,product_id,voucher_id,quantity,tax,discount,created_by, Updated_by)
VALUES(seq_sales_id.NEXTVAL, 1,4, 10, 0.07, 10,'admin', 'admin');

INSERT INTO sales_details(sales_id,product_id,voucher_id,quantity,tax,discount,created_by, Updated_by)
VALUES(seq_sales_id.NEXTVAL, 4,5, 03, 0.05, 10,'admin', 'admin');


CREATE SEQUENCE seq_sales_id
    start with 1
    INCREMENT BY 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE;
    
SELECT *
FROM sales_details;









  

