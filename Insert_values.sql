-- Insert 10 more customers (total 20 customers)
INSERT INTO customer (customer_id, cname, phone_number, cpassword, address, dob) VALUES
('CUST011', 'Harsha Vardhan', 9845874125, 'harsha@123', 'Mangalore', DATE '1996-10-12'),
('CUST012', 'Pooja Bansal', 9812345671, 'pooja@456', 'Amritsar', DATE '1993-03-21'),
('CUST013', 'Devansh Mehta', 9876543271, 'devansh@789', 'Vadodara', DATE '1992-06-13'),
('CUST014', 'Ritika Kapoor', 9881234567, 'ritika@321', 'Indore', DATE '1989-08-01'),
('CUST015', 'Abhinav Sinha', 9861239876, 'abhinav@654', 'Patna', DATE '1988-12-19'),
('CUST016', 'Shraddha Joshi', 9834125678, 'shraddha@852', 'Nagpur', DATE '1994-04-27'),
('CUST017', 'Yashwant Desai', 9856214785, 'yashwant@963', 'Surat', DATE '1991-09-15'),
('CUST018', 'Tanvi Chatterjee', 9921345678, 'tanvi@753', 'Kolkata', DATE '1996-02-18'),
('CUST019', 'Jitendra Kumar', 9845123487, 'jitendra@159', 'Ranchi', DATE '1990-07-29'),
('CUST020', 'Meghna Nair', 9876543212, 'meghna@357', 'Trivandrum', DATE '1987-01-06');

-- Insert 5 more staff (total 15 staff)
INSERT INTO staff (staff_id, sname, srole, email_id, phone_number, spassword, address, dob) VALUES
('STF011', 'Ankit Rastogi', 'Waiter', 'ankit.rastogi@hotel.com', 9871122334, 'ankit@101', 'Kanpur', DATE '1992-12-15'),
('STF012', 'Bhavna Rathi', 'Manager', 'bhavna.rathi@hotel.com', 9811223344, 'bhavna@202', 'Gurgaon', DATE '1985-07-11'),
('STF013', 'Siddharth Sen', 'Chef', 'siddharth.sen@hotel.com', 9922334455, 'siddharth@303', 'Howrah', DATE '1988-11-23'),
('STF014', 'Gauri Kamat', 'Waiter', 'gauri.kamat@hotel.com', 9933445566, 'gauri@404', 'Panaji', DATE '1994-08-04'),
('STF015', 'Dinesh Reddy', 'Receptionist', 'dinesh.reddy@hotel.com', 9944556677, 'dinesh@505', 'Warangal', DATE '1990-03-17');

-- Insert 5 more menu items (total 15 Indian dishes)
INSERT INTO menu_item (menu_item_id, menu_item_name, menu_item_category, menu_item_price) VALUES
('MNU011', 'Idli Sambhar', 'Breakfast', 80),
('MNU012', 'Vada Pav', 'Snacks', 40),
('MNU013', 'Tandoori Chicken', 'Main Course', 360),
('MNU014', 'Pav Bhaji', 'Main Course', 150),
('MNU015', 'Jalebi', 'Dessert', 60);

-- 30 rows for inventory (Indian context)
INSERT INTO inventory (inventory_item_id, iname, quantity) VALUES
('INV016', 'Tamarind', 12),
('INV017', 'Red Chilli Powder', 18),
('INV018', 'Ghee', 25),
('INV019', 'Cashew', 8),
('INV020', 'Almond', 10),
('INV021', 'Cumin', 22),
('INV022', 'Garam Masala', 14),
('INV023', 'Curd', 20),
('INV024', 'Paneer', 26),
('INV025', 'Besan', 15),
('INV026', 'Moong Dal', 19),
('INV027', 'Urad Dal', 17),
('INV028', 'Mustard Seeds', 13),
('INV029', 'Green Peas', 16),
('INV030', 'Coconut', 11),
('INV031', 'Carrot', 20),
('INV032', 'Cauliflower', 14),
('INV033', 'Capsicum', 13),
('INV034', 'Mint', 9),
('INV035', 'Jeera', 17),
('INV036', 'Black Pepper', 12),
('INV037', 'Cardamom', 7),
('INV038', 'Cloves', 6),
('INV039', 'Bay Leaf', 11),
('INV040', 'Fennel', 8),
('INV041', 'Saffron', 2),
('INV042', 'Mango', 18),
('INV043', 'Banana', 20),
('INV044', 'Papaya', 10),
('INV045', 'Spinach', 15);

-- 30 rows for orders (Indian dishes/customers)
INSERT INTO orders (order_id, status, item_name, quantity, arrival_time, reservation_time, item_type, customer_id) VALUES
('ORD006', 'Delivered', 'Samosa', 4, TIMESTAMP '2025-07-04 17:10:00', TIMESTAMP '2025-07-04 16:45:00', 'Snacks', 'CUST002'),
('ORD007', 'Preparing', 'Gulab Jamun', 2, NULL, TIMESTAMP '2025-07-05 13:00:00', 'Dessert', 'CUST003'),
('ORD008', 'Delivered', 'Butter Naan', 6, TIMESTAMP '2025-07-05 20:00:00', TIMESTAMP '2025-07-05 19:00:00', 'Bread', 'CUST004'),
('ORD009', 'Delivered', 'Dal Makhani', 3, TIMESTAMP '2025-07-05 18:30:00', TIMESTAMP '2025-07-05 18:00:00', 'Main Course', 'CUST005'),
('ORD010', 'Preparing', 'Rogan Josh', 2, NULL, TIMESTAMP '2025-07-05 14:00:00', 'Main Course', 'CUST006'),
('ORD011', 'Reserved', 'Aloo Paratha', 4, NULL, TIMESTAMP '2025-07-06 10:00:00', 'Breakfast', 'CUST007'),
('ORD012', 'Delivered', 'Pav Bhaji', 2, TIMESTAMP '2025-07-06 15:00:00', TIMESTAMP '2025-07-06 14:30:00', 'Main Course', 'CUST008'),
('ORD013', 'Delivered', 'Rasgulla', 3, TIMESTAMP '2025-07-06 21:00:00', TIMESTAMP '2025-07-06 20:30:00', 'Dessert', 'CUST009'),
('ORD014', 'Preparing', 'Idli Sambhar', 5, NULL, TIMESTAMP '2025-07-07 09:00:00', 'Breakfast', 'CUST010'),
('ORD015', 'Delivered', 'Vada Pav', 8, TIMESTAMP '2025-07-07 17:50:00', TIMESTAMP '2025-07-07 17:30:00', 'Snacks', 'CUST011'),
('ORD016', 'Delivered', 'Tandoori Chicken', 2, TIMESTAMP '2025-07-07 20:30:00', TIMESTAMP '2025-07-07 20:00:00', 'Main Course', 'CUST012'),
('ORD017', 'Preparing', 'Paneer Butter Masala', 3, NULL, TIMESTAMP '2025-07-08 18:00:00', 'Main Course', 'CUST013'),
('ORD018', 'Delivered', 'Chicken Biryani', 4, TIMESTAMP '2025-07-08 13:00:00', TIMESTAMP '2025-07-08 12:30:00', 'Main Course', 'CUST014'),
('ORD019', 'Delivered', 'Masala Dosa', 2, TIMESTAMP '2025-07-08 09:15:00', TIMESTAMP '2025-07-08 09:00:00', 'Breakfast', 'CUST015'),
('ORD020', 'Preparing', 'Rogan Josh', 2, NULL, TIMESTAMP '2025-07-08 21:00:00', 'Main Course', 'CUST016'),
('ORD021', 'Reserved', 'Aloo Paratha', 3, NULL, TIMESTAMP '2025-07-09 08:30:00', 'Breakfast', 'CUST017'),
('ORD022', 'Delivered', 'Paneer Butter Masala', 2, TIMESTAMP '2025-07-09 19:15:00', TIMESTAMP '2025-07-09 18:45:00', 'Main Course', 'CUST018'),
('ORD023', 'Delivered', 'Vada Pav', 7, TIMESTAMP '2025-07-10 16:40:00', TIMESTAMP '2025-07-10 16:00:00', 'Snacks', 'CUST019'),
('ORD024', 'Delivered', 'Jalebi', 8, TIMESTAMP '2025-07-10 21:20:00', TIMESTAMP '2025-07-10 21:00:00', 'Dessert', 'CUST020'),
('ORD025', 'Preparing', 'Butter Naan', 5, NULL, TIMESTAMP '2025-07-11 20:00:00', 'Bread', 'CUST001'),
('ORD026', 'Delivered', 'Dal Makhani', 4, TIMESTAMP '2025-07-11 18:45:00', TIMESTAMP '2025-07-11 18:00:00', 'Main Course', 'CUST002'),
('ORD027', 'Delivered', 'Chicken Biryani', 2, TIMESTAMP '2025-07-12 13:10:00', TIMESTAMP '2025-07-12 12:40:00', 'Main Course', 'CUST003'),
('ORD028', 'Preparing', 'Pav Bhaji', 2, NULL, TIMESTAMP '2025-07-12 14:30:00', 'Main Course', 'CUST004'),
('ORD029', 'Delivered', 'Gulab Jamun', 4, TIMESTAMP '2025-07-12 21:10:00', TIMESTAMP '2025-07-12 20:40:00', 'Dessert', 'CUST005'),
('ORD030', 'Delivered', 'Butter Naan', 3, TIMESTAMP '2025-07-13 19:30:00', TIMESTAMP '2025-07-13 19:00:00', 'Bread', 'CUST006'),
('ORD031', 'Reserved', 'Rasgulla', 5, NULL, TIMESTAMP '2025-07-13 20:00:00', 'Dessert', 'CUST007'),
('ORD032', 'Delivered', 'Aloo Paratha', 2, TIMESTAMP '2025-07-13 09:45:00', TIMESTAMP '2025-07-13 09:15:00', 'Breakfast', 'CUST008'),
('ORD033', 'Preparing', 'Masala Dosa', 6, NULL, TIMESTAMP '2025-07-13 10:30:00', 'Breakfast', 'CUST009'),
('ORD034', 'Delivered', 'Idli Sambhar', 3, TIMESTAMP '2025-07-13 11:00:00', TIMESTAMP '2025-07-13 10:30:00', 'Breakfast', 'CUST010'),
('ORD035', 'Delivered', 'Paneer Butter Masala', 2, TIMESTAMP '2025-07-13 19:00:00', TIMESTAMP '2025-07-13 18:30:00', 'Main Course', 'CUST011');

-- 30 rows for transactions (mix of cash/card, Indian context)
INSERT INTO transactions (transaction_id, gratuities, total_amount, pay_cash, card_number, card_type, customer_id, order_id, staff_id) VALUES
('TRX006', 30, 200, 'Yes', NULL, NULL, 'CUST002', 'ORD006', 'STF004'),
('TRX007', 20, 140, NULL, 1234123412341234, 'Visa', 'CUST003', 'ORD007', 'STF005'),
('TRX008', 50, 240, 'Yes', NULL, NULL, 'CUST004', 'ORD008', 'STF006'),
('TRX009', 40, 210, NULL, 9876987698769876, 'MasterCard', 'CUST005', 'ORD009', 'STF007'),
('TRX010', 60, 350, NULL, 4567456745674567, 'RuPay', 'CUST006', 'ORD010', 'STF008'),
('TRX011', NULL, 180, 'Yes', NULL, NULL, 'CUST007', 'ORD011', 'STF009'),
('TRX012', 25, 300, NULL, 5678567856785678, 'Visa', 'CUST008', 'ORD012', 'STF010'),
('TRX013', 35, 150, 'Yes', NULL, NULL, 'CUST009', 'ORD013', 'STF011'),
('TRX014', NULL, 250, NULL, 2345234523452345, 'MasterCard', 'CUST010', 'ORD014', 'STF012'),
('TRX015', 10, 320, 'Yes', NULL, NULL, 'CUST011', 'ORD015', 'STF013'),
('TRX016', NULL, 720, NULL, 8765876587658765, 'Visa', 'CUST012', 'ORD016', 'STF014'),
('TRX017', 50, 750, 'Yes', NULL, NULL, 'CUST013', 'ORD017', 'STF015'),
('TRX018', 60, 1280, NULL, 1122112211221122, 'RuPay', 'CUST014', 'ORD018', 'STF001'),
('TRX019', 15, 120, 'Yes', NULL, NULL, 'CUST015', 'ORD019', 'STF002'),
('TRX020', NULL, 350, NULL, 3344334433443344, 'MasterCard', 'CUST016', 'ORD020', 'STF003'),
('TRX021', 20, 180, 'Yes', NULL, NULL, 'CUST017', 'ORD021', 'STF004'),
('TRX022', NULL, 500, NULL, 4455445544554455, 'Visa', 'CUST018', 'ORD022', 'STF005'),
('TRX023', 30, 210, 'Yes', NULL, NULL, 'CUST019', 'ORD023', 'STF006'),
('TRX024', NULL, 320, NULL, 5566556655665566, 'RuPay', 'CUST020', 'ORD024', 'STF007'),
('TRX025', 25, 200, 'Yes', NULL, NULL, 'CUST001', 'ORD025', 'STF008'),
('TRX026', NULL, 300, NULL, 6677667766776677, 'Visa', 'CUST002', 'ORD026', 'STF009'),
('TRX027', 40, 640, 'Yes', NULL, NULL, 'CUST003', 'ORD027', 'STF010'),
('TRX028', NULL, 150, NULL, 7788778877887788, 'MasterCard', 'CUST004', 'ORD028', 'STF011'),
('TRX029', 35, 280, 'Yes', NULL, NULL, 'CUST005', 'ORD029', 'STF012'),
('TRX030', NULL, 120, NULL, 8899889988998899, 'Visa', 'CUST006', 'ORD030', 'STF013'),
('TRX031', 20, 300, 'Yes', NULL, NULL, 'CUST007', 'ORD031', 'STF014'),
('TRX032', NULL, 160, NULL, 9900990099009900, 'RuPay', 'CUST008', 'ORD032', 'STF015'),
('TRX033', 10, 180, 'Yes', NULL, NULL, 'CUST009', 'ORD033', 'STF001'),
('TRX034', NULL, 200, NULL, 1010101010101010, 'Visa', 'CUST010', 'ORD034', 'STF002'),
('TRX035', 50, 250, 'Yes', NULL, NULL, 'CUST011', 'ORD035', 'STF003');

-- Insert 5 sit_table rows
INSERT INTO sit_table (table_id, table_type, table_capacity, table_shape, table_status, order_id) VALUES
('TAB001', 'Regular', 4, 'Square', 'Occupied', 'ORD001'),
('TAB002', 'Family', 6, 'Rectangle', 'Reserved', 'ORD002'),
('TAB003', 'Couple', 2, 'Round', 'Vacant', NULL),
('TAB004', 'VIP', 8, 'Rectangle', 'Occupied', 'ORD004'),
('TAB005', 'Regular', 4, 'Square', 'Reserved', 'ORD005');

-- Insert 5 schedule rows
INSERT INTO schedule (staff_id, schedule_date, start_time, out_time) VALUES
('STF003', DATE '2025-07-04', TIMESTAMP '2025-07-04 08:00:00', TIMESTAMP '2025-07-04 16:00:00'),
('STF006', DATE '2025-07-04', TIMESTAMP '2025-07-04 10:00:00', TIMESTAMP '2025-07-04 18:00:00'),
('STF014', DATE '2025-07-04', TIMESTAMP '2025-07-04 12:00:00', TIMESTAMP '2025-07-04 20:00:00'),
('STF002', DATE '2025-07-04', TIMESTAMP '2025-07-04 09:00:00', TIMESTAMP '2025-07-04 17:00:00'),
('STF015', DATE '2025-07-04', TIMESTAMP '2025-07-04 15:00:00', TIMESTAMP '2025-07-04 23:00:00');

-- Insert 5 takes rows
INSERT INTO takes (staff_id, order_id) VALUES
('STF003', 'ORD001'),
('STF002', 'ORD002'),
('STF014', 'ORD003'),
('STF006', 'ORD004'),
('STF015', 'ORD005');

-- Insert 5 depends rows
INSERT INTO depends (menu_item_id, order_id) VALUES
('MNU001', 'ORD001'),
('MNU002', 'ORD002'),
('MNU003', 'ORD003'),
('MNU011', 'ORD004'),
('MNU015', 'ORD005');

-- Insert 5 manages rows
INSERT INTO manages (inventory_item_id, staff_id) VALUES
('INV001', 'STF002'),
('INV002', 'STF013'),
('INV005', 'STF014'),
('INV010', 'STF003'),
('INV012', 'STF015');
