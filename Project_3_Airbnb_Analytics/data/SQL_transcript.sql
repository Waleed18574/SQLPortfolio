select * FROM airbnb_search_details;

DROP TABLE IF EXISTS airbnb_search_details;
CREATE TABLE airbnb_search_details (
	id INT PRIMARY KEY,
	price NUMERIC(6,2),
	property_type VARCHAR(20),
	room_type VARCHAR(30),
	amenities TEXT,
	accommodates SMALLINT,
	bathrooms SMALLINT,
	bed_type VARCHAR(30),
	cancellation_policy VARCHAR(30),
	cleaning_fee BOOLEAN,
	city VARCHAR(20),
	host_identity_verified VARCHAR(1),
	host_response_rate VARCHAR(4),
	host_since DATE,
	neighbourhood VARCHAR(30),
	number_of_reviews SMALLINT,
	review_scores_rating NUMERIC(5,2),
	postalcode VARCHAR(8),
	bedrooms SMALLINT,
	beds SMALLINT);
COPY airbnb_search_details
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_search_details.csv'
WITH (FORMAT CSV, HEADER);

SELECT * from airbnb_search_details;


DROP TABLE IF EXISTS airbnb_apartments;
CREATE TABLE airbnb_apartments(
	host_id SMALLINT,
	apartment_id VARCHAR(4),
	apartment_type VARCHAR(10),
	n_beds SMALLINT,
	n_bedrooms SMALLINT,
	country VARCHAR(10),
	city VARCHAR(20),
	CONSTRAINT student_key PRIMARY KEY (host_id, apartment_id));
COPY airbnb_apartments
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_apartments.csv'
WITH (FORMAT CSV, HEADER);


DROP TABLE IF EXISTS airbnb_searches;
CREATE TABLE airbnb_searches(
	ds DATE,
	id_user VARCHAR(40),
	ds_checkin DATE,
	ds_checkout DATE,
	n_searches SMALLINT,
	n_nights SMALLINT,
	n_guests_min SMALLINT,
	n_guests_max SMALLINT,
	origin_country VARCHAR(20),
	filter_price_min NUMERIC,
	filter_price_max NUMERIC,
	filter_room_types VARCHAR(140),
	filter_neighborhoods VARCHAR(100));
COPY airbnb_searches
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_searches.csv'
WITH (FORMAT CSV, HEADER);


DROP TABLE IF EXISTS airbnb_reviews;
CREATE TABLE airbnb_reviews(
	from_user SMALLINT,
	to_user SMALLINT,
	from_type VARCHAR(5),
	to_type VARCHAR(5),
	review_score SMALLINT);
COPY airbnb_reviews
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_reviews.csv'
WITH (FORMAT CSV, HEADER);



DROP TABLE IF EXISTS airbnb_hosts;
CREATE TABLE airbnb_hosts(
	host_id SMALLINT,
	nationality VARCHAR(10),
	gender VARCHAR(1),
	age SMALLINT);
COPY airbnb_hosts
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_hosts.csv'
WITH (FORMAT CSV, HEADER);


DROP TABLE IF EXISTS airbnb_contacts;
CREATE TABLE airbnb_contacts(
	id_guest VARCHAR(45),
	id_host VARCHAR(45),
	id_listing VARCHAR(45),
	ts_contact_at TIMESTAMP,
	ts_reply_at TIMESTAMP,
	ts_accepted_at TIMESTAMP,
	ts_booking_at TIMESTAMP,
	ds_checkin DATE,
	ds_checkout DATE,
	n_guests SMALLINT,
	n_messages SMALLINT);
COPY airbnb_contacts
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_contacts.csv'
WITH (FORMAT CSV, HEADER);


DROP TABLE IF EXISTS airbnb_guests;
CREATE TABLE airbnb_guests(
	guest_id SMALLINT,
	nationality VARCHAR(10),
	gender VARCHAR(1),
	age SMALLINT);
COPY airbnb_guests
FROM 'C:\Users\ADMIN\Desktop\Datasets\bnb_data\airbnb_guests.csv'
WITH (FORMAT CSV, HEADER);



/* airbnb_search_details,
airbnb_apartments,
airbnb_searches,
airbnb_reviews,
airbnb_hosts,
airbnb_contacts 
*/