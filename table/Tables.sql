/* Creating a table in sql */
create table GuestInfo (
guest_id int(10)
, guest_name_first char(25) not null
, guest_name_last char(25) not null
, guest_phone_number int 
, guest_location char(25) not null); 

alter table GuestInfo
modify guest_phone_number char(100);

create table Restaurants (
guest_location char(25) 
, menu char(25) not null
, price numeric(2,2) not null 
, location char(25) not null
, reservation char(3) not null ); 

alter table Restaurants
modify guest_location char(30) not null; 

alter table Restaurants
modify price decimal(8,2); 

create table OnlineOrders (
guest_phone_number int(10) 
, guest_using_app char(3) not null
, guest_using_delivery char(3) not null
, order_over_100 char(3) not null); 

alter table OnlineOrders
modify guest_phone_number char(20); 

insert into GuestInfo values ('100', 'Tien', 'Tran', '4156838189', 'Gilroy'); 
insert into GuestInfo values ('101', 'Amy', 'Liang', '4081238967', 'Sunnyvale'); 
insert into GuestInfo values ('102', 'Smith', 'Roberts', '8086753452', 'San Jose'); 
insert into GuestInfo values ('103', 'George', 'Ruth', '6064563476', 'Cupertino'); 
insert into GuestInfo values ('104', 'Vivian', 'Keith', '4025675647', 'San Francisco'); 

insert into Restaurants values ('Gilroy','Pho', '12.99', 'Pho Lien Hung 1', 'No');
insert into Restaurants values ('Sunnyvale','Bun Bo Hue', '14.99', 'Pho Lien Hung 2', 'Yes');
insert into Restaurants values ('San Jose','Bun Rieu', '12.99', 'Pho Lien Hung 2', 'No');
insert into Restaurants values ('Cupertino','Hu Tieu', '11.99', 'Pho Lien Hung 1', 'No');
insert into Restaurants values ('San Francisco','Com Tam', '13.99', 'Pho Lien Hung 2', 'Yes');

insert into OnlineOrders values ('4156838189', 'Yes', 'No', 'Yes'); 
insert into OnlineOrders values ('4081238967', 'No', 'Yes', 'Yes'); 
insert into OnlineOrders values ('8086753452', 'No', 'No', 'NO'); 
insert into OnlineOrders values ('6064563476', 'Yes', 'Yes', 'Yes'); 
insert into OnlineOrders values ('4025675647', 'NO', 'No', 'Yes'); 

update OnlineOrders
set guest_using_app = 'No'
where guest_phone_number = 4025675647; 

select * from OnlineOrders
left join GuestInfo using (guest_phone_number)
left join Restaurants using (guest_location);