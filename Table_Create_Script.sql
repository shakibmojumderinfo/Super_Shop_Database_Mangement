--000001
CREATE TABLE shop_info
  (
    shop_id            NUMBER CONSTRAINT shop_id_pk PRIMARY KEY,
    shop_name          VARCHAR2(50) CONSTRAINT shop_name_nn NOT NULL,
    address            VARCHAR2(100) CONSTRAINT shop_address_nn NOT NULL,
    phone              NUMBER(11) CONSTRAINT phone_nn NOT NULL,
    email              VARCHAR2(100) ,
    website            VARCHAR2(100),
    social_link        VARCHAR2(100),
    establish_date     DATE,
    logo               BLOB,
    registration_no    NUMBER,
    registration_issue DATE,
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );
  
  DROP TABLE shop_info cascade constraint;
  
--shop info
INSERT INTO shop_info (shop_id, shop_name, address, phone, email, website, social_link, establish_date, 
logo, registration_no, registration_issue, created_by, updated_by)
VALUES (100, 'nass super shop', '294/1, kawran bazar, dhaka', '01407175774', 'supershop@gmail.com', 'www.nassshop.com' ,'https://www.facebook.com/@super_shop', TO_DATE('2024-07-01', 'YYYY-MM-DD'),
NULL, 123456789, '30-JAN-2000', 'admin', 'admin');

--departments_table created
--02
CREATE TABLE departments(
    department_id      NUMBER CONSTRAINT department_id_pk PRIMARY KEY,
    department_name    VARCHAR2(100),
    shop_id            NUMBER CONSTRAINT shop_id_fk REFERENCES shop_info(shop_id),
    establish_date     DATE,
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );

--03
CREATE TABLE employees
  (
    employee_id    NUMBER CONSTRAINT employee_id_pk PRIMARY KEY ,
    employee_name  VARCHAR2(100) CONSTRAINT employee_nn NOT NULL,
    email          VARCHAR2(100),
    phone_number   VARCHAR2(16) CONSTRAINT phone_no_uk UNIQUE ,
    hire_date      DATE CONSTRAINT hire_date_nn NOT NULL,
    designation    VARCHAR2(255) CONSTRAINT designation_nn NOT NULL,
    salary         NUMBER(10,2) CONSTRAINT salary_ck CHECK(salary > 0),
    commission_pct NUMBER(4,2),
    incentive      NUMBER,
    department_id  CONSTRAINT department_id_fk REFERENCES departments(department_id),
    created        DATE DEFAULT SYSDATE,
    created_by     VARCHAR2(255),
    updated        DATE DEFAULT SYSDATE,
    updated_by     VARCHAR2(255)
  );


--04
CREATE TABLE user_register(
    user_id     VARCHAR2(50) CONSTRAINT user_id_pk PRIMARY KEY,
    user_name   VARCHAR2(100)CONSTRAINT user_name_reg NOT NULL,
    email       VARCHAR2(100),
    phone       VARCHAR2(16),
    password    VARCHAR2(30 BYTE) CONSTRAINT password_ck CHECK(password>7),
    employee_id NUMBER CONSTRAINT employee_id_fk REFERENCES employees(employee_id),
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );

--05
CREATE TABLE category(
    category_id   NUMBER CONSTRAINT category_id_pk PRIMARY KEY,
    category_name VARCHAR2(100)CONSTRAINT category_name_nn NOT NULL,
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );


--06
CREATE TABLE sub_category
  (
    sub_category_id   NUMBER CONSTRAINT sub_category_id_pk PRIMARY KEY,
    sub_category_name VARCHAR2(100)CONSTRAINT sub_category_name_nn NOT NULL, --NN MEAN NOT NULL--
    category_id       NUMBER CONSTRAINT category_id_fk REFERENCES category(category_id),
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );

--07
CREATE TABLE product_unit(
    unit_id            VARCHAR2(20) CONSTRAINT unit_id_pk PRIMARY KEY,
    unit_name          VARCHAR2(100)CONSTRAINT unit_name_nn NOT NULL,
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );


--08
CREATE TABLE product_info
  (
    product_id      NUMBER CONSTRAINT product_id_pk PRIMARY KEY,
    product_name    VARCHAR2(255) ,
    unit_id         VARCHAR2(20) CONSTRAINT unit_id_fk REFERENCES product_unit(unit_id),
    price           NUMBER(10,2),
    sub_category_id NUMBER CONSTRAINT sub_category_id_fk REFERENCES sub_category(sub_category_id),
    stock_level     NUMBER,
    discount        NUMBER(10,2),
    brand_name      VARCHAR2(100),
    created         DATE DEFAULT SYSDATE,
    created_by      VARCHAR2(255),
    updated         DATE DEFAULT SYSDATE,
    updated_by      VARCHAR2(255)
  );

--09
CREATE TABLE supplier_info
  (
    supplier_id   NUMBER CONSTRAINT supplier_id_pk PRIMARY KEY,
    supplier_name VARCHAR2(100)CONSTRAINT supplier_name_nn NOT NULL,
    contact_no    VARCHAR2(16) CONSTRAINT contact_no_nn NOT NULL,
    ADDRESS       VARCHAR2(255),
    email         VARCHAR2(100),
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  );


--10
CREATE TABLE purchase_master(
    purchase_id  NUMBER CONSTRAINT purchase_id_pk PRIMARY KEY,
    supplier_id  NUMBER CONSTRAINT supplier_id_fk REFERENCES supplier_info(supplier_id),
    bill_no      NUMBER,
    order_date   DATE CONSTRAINT order_date_nn NOT NULL,
    employee_id  NUMBER CONSTRAINT employee_id_fk1 REFERENCES employees(employee_id),
    created      DATE DEFAULT SYSDATE,
    created_by   VARCHAR2(255),
    updated      DATE DEFAULT SYSDATE,
    updated_by   VARCHAR2(255)
  );


--11
CREATE TABLE purchase_details(
    received_product_id NUMBER CONSTRAINT receive_product_id_pk PRIMARY KEY,
    product_id          NUMBER CONSTRAINT product_id_fk REFERENCES product_info(product_id) NOT NULL,
    purchase_id         NUMBER CONSTRAINT purchase_id_fk REFERENCES purchase_master(purchase_id)NOT NULL,
    unit_id             VARCHAR2(20) CONSTRAINT unit_id_fk1 REFERENCES product_unit(unit_id),
    unit_price          NUMBER(10,2) CONSTRAINT unit_price_nn NOT NULL,
    quantity            NUMBER,
    employee_id         NUMBER CONSTRAINT employee_id_fk_pur REFERENCES employees(employee_id),
    created             DATE DEFAULT SYSDATE,
    created_by          VARCHAR2(255),
    updated             DATE DEFAULT SYSDATE,
    updated_by          VARCHAR2(255)
  );


--12
CREATE TABLE stock(
    stock_id          NUMBER CONSTRAINT stock_id_pk PRIMARY KEY,
    product_id        NUMBER CONSTRAINT product_id_i_fk REFERENCES product_info(product_id)NOT NULL,
    stock_adding_date DATE CONSTRAINT stock_adding_date_nn NOT NULL,
    stock_update_date DATE CONSTRAINT stock_update_date_nn NOT NULL,
    brand             VARCHAR2(255),
    quantity          NUMBER(10,2),
    user_id           VARCHAR2(30) CONSTRAINT user_id_fk REFERENCES user_register(user_id)
  );


--13
CREATE TABLE customer_info(
    customer_id   NUMBER CONSTRAINT customer_id_pk PRIMARY KEY,
    customer_name VARCHAR2(255),
    email         VARCHAR2(255),
    phone         VARCHAR2(255),
    address       VARCHAR2(255),
    gender        VARCHAR2(30),
    description   CLOB,
    created       DATE DEFAULT SYSDATE,
    created_by    VARCHAR2(255),
    updated       DATE DEFAULT SYSDATE,
    updated_by    VARCHAR2(255)
  );

--14
CREATE TABLE sales_master(
    voucher_id     NUMBER CONSTRAINT voucher_id_pk PRIMARY KEY,
    invoice_number NUMBER CONSTRAINT invoice_number_nn NOT NULL,
    sales_date     DATE CONSTRAINT sales_date_nn NOT NULL,
    customer_id    NUMBER CONSTRAINT customer_id_fk REFERENCES customer_info(customer_id),
    customer_name  VARCHAR2(255),
    address        VARCHAR2(255),
    mobile         VARCHAR2(255),
    total_amount   NUMBER NOT NULL,
    description    CLOB,
    user_id        VARCHAR2(20) CONSTRAINT user_id_i_fk REFERENCES user_register(user_id),
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  ); 


--15
CREATE TABLE sales_details(
    sales_id   NUMBER CONSTRAINT sales_id_pk PRIMARY KEY,
    product_id NUMBER CONSTRAINT product_id_ii_fk REFERENCES product_info(product_id),
    voucher_id  NUMBER CONSTRAINT voucher_id_fk REFERENCES sales_master(voucher_id),
    quantity   NUMBER CONSTRAINT quantity_i_nn NOT NULL,
    tax        NUMBER,
    discount   NUMBER,
    created            DATE DEFAULT SYSDATE,
    created_by         VARCHAR2(255),
    updated            DATE DEFAULT SYSDATE,
    updated_by         VARCHAR2(255)
  ); 


DROP TABLE sales_details;
DROP TABLE sales_master;
DROP TABLE customer_info;
DROP TABLE stock;
DROP TABLE purchase_details;
DROP TABLE purchase_master;
DROP TABLE supplier_info;
DROP TABLE product_info;
DROP TABLE product_unit;
DROP TABLE sub_category;
DROP TABLE category;
DROP TABLE user_register;
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE shop_info;





















