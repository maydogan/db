create table sales_order (
  s_order_no varchar(6),
  s_order_date date,
  client_no varchar(25),
  dely_add varchar(6),
  salesman_no varchar(6),
  dely_type char(1) default 'F',
  billed_yn char(1),
  dely_date date,
  order_status varchar(10),
  CONSTRAINT s_order_no_pk PRIMARY KEY (s_order_no),
  CONSTRAINT client_no_fk FOREIGN KEY (client_no) REFERENCES client_master(client_no),
  CONSTRAINT salesman_no_fk FOREIGN KEY (salesman_no) REFERENCES salesman_master(salesman_no),
  check (order_status = ANY(array['Ip', 'F', 'Bo', 'C'])),
  check (dely_date > s_order_date),
  check (s_order_no ~ '^0')
);

