-- Customers
INSERT INTO customer (customer_id, cname, phone_number, cpassword, address, dob) VALUES
('CUST001', 'Rahul Sharma', '9876543210', 'rahul123', '12 MG Road, Mumbai', TO_DATE('1990-06-15','YYYY-MM-DD'));
INSERT INTO customer (customer_id, cname, phone_number, cpassword, address, dob) VALUES
('CUST002', 'Priya Verma', '8765432109', 'priya456', '45 Brigade Rd, Bangalore', TO_DATE('1988-09-21','YYYY-MM-DD'));
INSERT INTO customer (customer_id, cname, phone_number, cpassword, address, dob) VALUES
('CUST003', 'Amit Patel', '7654321098', 'amit789', '89 Park St, Kolkata', TO_DATE('1992-02-11','YYYY-MM-DD'));
INSERT INTO customer (customer_id, cname, phone_number, cpassword, address, dob) VALUES
('CUST004', 'Sneha Iyer', '9123456780', 'sneha321', '34 Anna Salai, Chennai', TO_DATE('1995-12-05','YYYY-MM-DD'));
INSERT INTO customer (customer_id, cname, phone_number, cpassword, address, dob) VALUES
('CUST005', 'Karan Singh', '9988776655', 'karan654', '56 SG Highway, Ahmedabad', TO_DATE('1987-07-30','YYYY-MM-DD'));

-- Staff
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob) VALUES
('STAFF01', 'Suresh Kumar', 'Manager', 'suresh@restaurant.in', '9090909090', 'sureshpass', '1 Residency Rd, Delhi', TO_DATE('1980-01-10','YYYY-MM-DD'));
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob) VALUES
('STAFF02', 'Meena Joshi', 'Chef', 'meena@restaurant.in', '9191919191', 'meenapass', '23 Club Rd, Pune', TO_DATE('1983-04-18','YYYY-MM-DD'));
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob) VALUES
('STAFF03', 'Ravi Mehta', 'Waiter', 'ravi@restaurant.in', '9292929292', 'ravipass', '78 Link Rd, Hyderabad', TO_DATE('1991-09-07','YYYY-MM-DD'));
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob) VALUES
('STAFF04', 'Anjali Nair', 'Hostess', 'anjali@restaurant.in', '9393939393', 'anjalipass', '65 Palm St, Kochi', TO_DATE('1992-11-29','YYYY-MM-DD'));
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob) VALUES
('STAFF05', 'Arjun Reddy', 'Bartender', 'arjun@restaurant.in', '9494949494', 'arjunpass', '54 Beach Rd, Vizag', TO_DATE('1987-08-14','YYYY-MM-DD'));

-- Menu Items
INSERT INTO menu_item (menu_item_id, menu_item_name, menu_item_category, menu_item_price) VALUES
('MENU01', 'Paneer Butter Masala', 'Main Course', 350);
INSERT INTO menu_item (menu_item_id, menu_item_name, menu_item_category, menu_item_price) VALUES
('MENU02', 'Chicken Biryani', 'Main Course', 450);
INSERT INTO menu_item (menu_item_id, menu_item_name, menu_item_category, menu_item_price) VALUES
('MENU03', 'Masala Dosa', 'Breakfast', 120);
INSERT INTO menu_item (menu_item_id, menu_item_name, menu_item_category, menu_item_price) VALUES
('MENU04', 'Gulab Jamun', 'Dessert', 80);
INSERT INTO menu_item (menu_item_id, menu_item_name, menu_item_category, menu_item_price) VALUES
('MENU05', 'Mango Lassi', 'Beverage', 90);

-- Inventory
INSERT INTO inventory (inventory_item_id, iname, quantity) VALUES
('INV001', 'Paneer', 60);
INSERT INTO inventory (inventory_item_id, iname, quantity) VALUES
('INV002', 'Basmati Rice', 150);
INSERT INTO inventory (inventory_item_id, iname, quantity) VALUES
('INV003', 'Potatoes', 200);
INSERT INTO inventory (inventory_item_id, iname, quantity) VALUES
('INV004', 'Sugar', 100);
INSERT INTO inventory (inventory_item_id, iname, quantity) VALUES
('INV005', 'Curd', 50);

-- Orders
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, reservation_time, item_type, customer_id) VALUES
('ORD001', 'Completed', 'Paneer Butter Masala', 2, SYSTIMESTAMP, SYSTIMESTAMP, 'Dine-in', 'CUST001');
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, reservation_time, item_type, customer_id) VALUES
('ORD002', 'Pending', 'Chicken Biryani', 1, NULL, SYSTIMESTAMP, 'Takeaway', 'CUST002');
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, reservation_time, item_type, customer_id) VALUES
('ORD003', 'Completed', 'Masala Dosa', 3, SYSTIMESTAMP, SYSTIMESTAMP, 'Dine-in', 'CUST003');
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, reservation_time, item_type, customer_id) VALUES
('ORD004', 'Cancelled', 'Gulab Jamun', 1, NULL, SYSTIMESTAMP, 'Dine-in', 'CUST004');
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, reservation_time, item_type, customer_id) VALUES
('ORD005', 'Completed', 'Mango Lassi', 2, SYSTIMESTAMP, SYSTIMESTAMP, 'Delivery', 'CUST005');

-- Sit Tables
INSERT INTO sit_table (table_id, table_type, table_capacity, table_shape, table_status, order_id) VALUES
('TABLE1', 'VIP', 4, 'Round', 'Occupied', 'ORD001');
INSERT INTO sit_table (table_id, table_type, table_capacity, table_shape, table_status, order_id) VALUES
('TABLE2', 'Standard', 2, 'Square', 'Available', NULL);
INSERT INTO sit_table (table_id, table_type, table_capacity, table_shape, table_status, order_id) VALUES
('TABLE3', 'Standard', 6, 'Rectangle', 'Occupied', 'ORD003');
INSERT INTO sit_table (table_id, table_type, table_capacity, table_shape, table_status, order_id) VALUES
('TABLE4', 'Standard', 2, 'Square', 'Reserved', 'ORD002');
INSERT INTO sit_table (table_id, table_type, table_capacity, table_shape, table_status, order_id) VALUES
('TABLE5', 'VIP', 4, 'Round', 'Available', NULL);

-- Transactions
INSERT INTO transactions (transaction_id, gratuities, total_amount, pay_cash, card_number, card_type, customer_id, order_id, staff_id) VALUES
('TRANS01', 50, 750, 'Yes', '4111111122223333', 'Visa', 'CUST001', 'ORD001', 'STAFF01');
INSERT INTO transactions (transaction_id, gratuities, total_amount, pay_cash, card_number, card_type, customer_id, order_id, staff_id) VALUES
('TRANS02', 0, 450, 'No', '4444555566667777', 'MasterCard', 'CUST002', 'ORD002', 'STAFF02');
INSERT INTO transactions (transaction_id, gratuities, total_amount, pay_cash, card_number, card_type, customer_id, order_id, staff_id) VALUES
('TRANS03', 60, 360, 'Yes', NULL, NULL, 'CUST003', 'ORD003', 'STAFF03');
INSERT INTO transactions (transaction_id, gratuities, total_amount, pay_cash, card_number, card_type, customer_id, order_id, staff_id) VALUES
('TRANS04', 0, 0, 'No', NULL, NULL, 'CUST004', 'ORD004', 'STAFF04');
INSERT INTO transactions (transaction_id, gratuities, total_amount, pay_cash, card_number, card_type, customer_id, order_id, staff_id) VALUES
('TRANS05', 20, 180, 'Yes', '8888999900001111', 'RuPay', 'CUST005', 'ORD005', 'STAFF05');
