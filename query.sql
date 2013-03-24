1. create  index client_no_index on client_master(client_no);
2. create  index s_order_no_index on sales_order(s_order_no);
3. create  index s_order_product_no_index on sales_order_details(s_order_no, pruduct_no);
4. drop    index s_order_no_index;
5. create  view  sal_amt_view as select sal_amt FROM salesman_master "sal_amt > 3500"; 
6. create  view  client_view  as select client_no, name, address1 as add1, address2 as add2, city, pincode as pcode, state from client_master;
7. create  view  client_view_show as select name from client_view where city = 'Bombay';
8. drop    view  client_view_show;
   drop    view client_view;
9. create  view  salesman_list_view as select s_order_no from sales_order where s_order_date = current_date;

10.~~~~




