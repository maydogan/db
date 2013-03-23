CREATE TABLE sales_order
( s_order_no varchar(6),
  s_order_date date ,
  client_no varchar(6),
  dely_add varchar(6),
  salesman_no varchar(6),
  dely_type char(1),
  billed_yn char(1), 
  dely_date date,
  order_status varchar(10),
  CONSTRAINT pk_cmcreateso PRIMARY KEY (client_no),
  CONSTRAINT fk_smcreateso FOREIGN KEY (salesman_no) REFERENCES salesman_master (salesman_no),
  CONSTRAINT "sales_order_check" CHECK (dely_date > s_order_date),
  check (s_order_no like '0%')

);
