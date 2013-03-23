CREATE TABLE salesman_master
( salesman_no varchar(6) CONSTRAINT sm_no_fk primary key, 
sal_name varchar(20) NOT NULL,
address varchar(20)  NOT NULL,
city varchar(20),
state varchar(20),
pincode numeric(6),
sal_amt numeric(8,2) NOT NULL , 
tgt_to_get numeric(6,2) NOT NULL ,
ytd_sales numeric(6,2) NOT NULL ,
remarks varchar (30),
check (salesman_no like 'S%'),
check (sal_amt != 0 and tgt_to_get != 0 and ytd_sales !=0)
);
