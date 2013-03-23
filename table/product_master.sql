 CREATE TABLE product_master
( product_no varchar(6) PRIMARY KEY,
description varchar(20),
profit_percent numeric(20),
unit_measure varchar(20),
qty_on_hand numeric(20),
reorder_lvl numeric(20),
sell_price numeric(20),
cost_price numeric(20)
);
