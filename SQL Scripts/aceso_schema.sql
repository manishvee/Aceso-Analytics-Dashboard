create database aceso;
use aceso;

create table customer(customer_id numeric(8) primary key, 
					  first_name varchar(50),  
                      last_name varchar(50), 
                      date_of_birth date, gender char(1), 
                      phone_no numeric(11), 
                      email_id varchar(50), 
                      date_registered date);
                      
create table store(store_id numeric(3) primary key, 
				   store_location varchar(50), 
                   employees numeric(3));
                   
create table drug(drug_id numeric(8) primary key, 
				  drug_name varchar(500), 
                  manufacturer varchar(200),
                  commercial_name varchar(200), 
                  price numeric(6));
                  
create table bill(bill_id numeric(8), 
				  drug_id numeric(8), 
                  customer_id numeric(8), 
                  store_id numeric(4), 
                  quantity numeric(4), 
                  bill_date date, 
                  primary key(bill_id, drug_id), 
                  foreign key(drug_id) references drug(drug_id), 
                  foreign key(customer_id) references customer(customer_id), 
                  foreign key(store_id) references store(store_id));