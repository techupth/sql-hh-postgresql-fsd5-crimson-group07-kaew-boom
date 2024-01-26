-- Start writing code here
CREATE TABLE users (
  user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username VARCHAR ( 255 ) UNIQUE NOT NULL,
    password  VARCHAR ( 255 ) NOT NULL,
    email varchar (255) unique not null,
	
    created_at TIMESTAMPTZ NOT NULL
);


CREATE TABLE products (
  product_id  INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR ( 255 ) UNIQUE NOT NULL,
description text null,
price numeric(10,2)	not null,
 created_at TIMESTAMPTZ NOT NULL
);

CREATE TABLE categories (
  category_id    INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR ( 255 ) UNIQUE NOT NULL,
 created_at TIMESTAMPTZ unique NOT NULL
);

CREATE TABLE product_categories (
  product_category_id    INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	product_id int references products (product_id)ON DELETE CASCADE,
	category_id int references categories (category_id )ON DELETE CASCADE

);
