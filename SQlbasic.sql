create table products(
productID serial primary key,
name varchar(100) not null,
sku_code char(8) unique not null,
price numeric(10,2) check (price>0),
stock_quantity int default 0 check (stock_quantity >= 0),
Is_available boolean default true,
category text not null,
Added_on date default current_date,
Last_updated timestamp default now()
);

insert into products(name,sku_code,price,stock_quantity,category)
values 
('Wireless Mouse', 'WM123456', 699.99, 50,'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30,'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20,'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15,'Accessories'),
('Notebook', 'NB567890', 99.99, 100,'Stationery'),
('Pen Set', 'PS678901', 199.00, 200,'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75,'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40,'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25,'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60,'Fitness');
		


select * from products;