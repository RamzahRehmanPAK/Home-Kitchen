create schema db;

create table db.Userr(
 UserId int primary key,
Name varchar(50),
Email varchar(50),
Passwordd varchar(50),
ImagePath varchar(50),
ContactNumber varchar(50),
BillingAddress varchar(50),
CNIC varchar(50));


create table db.review(
Id int not null,
stars int not null,
sender int FOREIGN KEY  references  db.Userr(UserId),
Messagee varchar (700) not null,
ReviewDate varchar (50));


create table db.food(

Id int primary key,
Name varchar (50),
sellerId int not null FOREIGN KEY  references db.Userr(UserId),
Countt int,
Description varchar (100),
ImagePath varchar (100),
Price int not null,
startTime varchar(50),
deleteTime varchar(50),
foodType varchar(4) not null,
CONSTRAINT CHK_foodType CHECK (foodType='Deal' OR foodType='Item')
);

create table db.Item(
Id int primary key FOREIGN KEY  references db.Item(Id),
cuisine varchar(50)
);

create table db.Orderr(
orderId int primary key,
buyer int FOREIGN KEY  references db.Userr(UserId),
food int FOREIGN KEY  references db.Food(Id),
WhenOrderPlaced varchar(50),
WhenDelivered varchar(50),
amountPaid int,
quantity int,
statuss varchar(50),
CONSTRAINT CHK_statuss CHECK (statuss='new' OR statuss='received' OR statuss='cancelled' )
);
select * from db.Userr;
select * from db.review
select * from db.food
select * from db.Item
select * from db.Orderr