CREATE TABLE sales_order
( s_order_no varchar(6),
  s_order_date date,
  client_no varchar(25),
  dely_add varchar(6),
  salesman_no varchar(6),
  dely_type char(1) ,
  billed_yn char(1), 
  dely_date date,
  order_status varchar(10),
  CONSTRAINT pk_s_order_no PRIMARY KEY (s_order_no),
  CONSTRAINT fk_client_no FOREIGN KEY (client_no) REFERENCES client_master (client_no),
  CONSTRAINT fk_salesmen_no FOREIGN KEY (salesman_no) REFERENCES salesman_master (salesman_no),
  check dely_type default 'F',
  check (dely_date > s_order_date),
  check (s_order_no ~ '^0'),
  check (order_status = any(array['P', 'F', 'Bo', 'C']))
  

);
