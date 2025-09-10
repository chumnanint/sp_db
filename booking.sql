-- public.booking definition

-- Drop table

-- DROP TABLE public.booking;

CREATE TABLE public.booking (
	id int4 DEFAULT nextval('reserval_id_seq'::regclass) NOT NULL,
	require_date date NULL,
	court_time_id varchar(6) NULL,
	court_charge float8 NULL,
	lighting_charge float8 NULL,
	payment_type int4 NULL,
	booking_timestamp timestamp(0) DEFAULT now() NULL,
	cancel_timestamp timestamp(0) NULL,
	refund_amount float8 NULL,
	refund_note varchar(100) NULL,
	cancel_note varchar NULL,
	member_no int4 NULL,
	cancel_by int4 NULL,
	place_id varchar(2) NULL,
	CONSTRAINT booking_pk PRIMARY KEY (id)
);

