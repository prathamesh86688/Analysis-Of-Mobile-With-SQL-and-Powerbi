Create Schema Project2;
use Project2;
Select * from `mobile analysis`;

ALTER TABLE `mobile analysis` RENAME TO Mobile;

#Check Moblile features and price list
Select phone_name, price from Mobile;


#Find out the price of 5 most expensive phones
Select * from mobile
order by price desc
limit 5 ;

#Find out the price of 5 most cheapest phones
Select * from mobile
order by price asc
limit 5;

#List of top 5 SAMSUNG phones with price and all features
Select * from mobile
where Brands='Samsung'
order by price desc
limit 5;

#List the Top 5 high price andriod phoenes
Select * from mobile
where operating_system_type='Android'
order by price desc
limit 5;

#List the lower top 5 Android phones
select * from mobile
where operating_system_type='Android'
order by price asc
limit 5;

#List the top 5 high price IOS phones
select * from mobile
where operating_system_type='IOS'
order by price desc
limit 5;


##List the lower top 5 IOS phones
select * from mobile
where operating_system_type='IOS'
order by price asc
limit 5;


#List which phones support 5g and also top 5 phone with 5g support
Select * from mobile
where 5G_Availability='Yes'
order by price desc
limit 5;

#Total price of all mobile is to be found with brand name
Select Brands, sum(price) from mobile
group by brands;






