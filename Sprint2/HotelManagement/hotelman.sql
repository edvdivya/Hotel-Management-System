drop table room;
drop table hotel;
drop table booking;
drop table loggedin_user;



CREATE TABLE IF NOT EXISTS loggedin_user
	(
		user_id bigint AUTO_INCREMENT,
		user_name varchar(50) NOT NULL ,
		email_id varchar(50) NOT NULL ,
		dob datetime,
		user_mobile bigint,
		gender VARCHAR(1),
		aadhar_number varchar(12),
		delete_flag bit,
		CONSTRAINT PRIMARY KEY(user_id)
	);
	

CREATE TABLE IF NOT EXISTS booking 
	(
		booking_id bigint AUTO_INCREMENT,
		booking_status varchar(50),
		booking_date date,
		checkin_date date,
		checkout_date date,
		booking_cost double, 
		hotel_id bigint,
		user_id bigint,
		CONSTRAINT PRIMARY KEY(booking_id) ,
		delete_flag bit,
		FOREIGN KEY (user_id) REFERENCES loggedin_user(user_id)
	);


	
	CREATE TABLE IF NOT EXISTS hotel 
	(
		city_name varchar(50) not null,
		hotel_id bigint AUTO_INCREMENT,
		hotel_name varchar(50) NOT NULL ,
		hotel_address double NOT NULL ,
		hotel_phone_number bigint not null,
		hotel_rating double,
		delete_flag bit,
		CONSTRAINT PRIMARY KEY(hotel_id)
	);
	


	CREATE TABLE IF NOT EXISTS room 
	(
		room_id bigint AUTO_INCREMENT,
		room_type varchar(50) NOT NULL ,
		room_rent double NOT NULL ,
		room_number bigint,
		hotel_id bigint,
		delete_flag bit,
		CONSTRAINT PRIMARY KEY(room_id),
		FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
	);

	CREATE TABLE IF NOT EXISTS room 
	(
		room_id bigint AUTO_INCREMENT,
		room_type varchar(50) NOT NULL ,
		room_rent double NOT NULL ,
		room_number bigint,
		hotel_id bigint,
		delete_flag bit,
		CONSTRAINT PRIMARY KEY(room_id),
		FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
	);