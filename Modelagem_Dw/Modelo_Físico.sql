CREATE SCHEMA IF NOT EXISTS dwschema;

CREATE TABLE IF NOT EXISTS dwschema.dim_client
(
    sk_client integer NOT NULL,
    id_client integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    CONSTRAINT dim_client_pkey PRIMARY KEY (sk_client)
);

CREATE TABLE IF NOT EXISTS dwschema.dim_loc
(
    sk_loc integer NOT NULL,
    id_loc integer NOT NULL,
    country character varying(50) NOT NULL,
    region character varying(50) NOT NULL,
    state character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    CONSTRAINT dim_loc_pkey PRIMARY KEY (sk_loc)
);

CREATE TABLE IF NOT EXISTS dwschema.dim_product
(
    sk_product integer NOT NULL,
    id_product integer NOT NULL,
    name_product character varying(50) NOT NULL,
    category character varying(50) NOT NULL,
    subcategory character varying(50) NOT NULL,
    CONSTRAINT dim_product_pkey PRIMARY KEY (sk_product)
);

CREATE TABLE IF NOT EXISTS dwschema.dim_date
(
    sk_date integer NOT NULL,
    full_date date,
    year integer NOT NULL,
    month integer NOT NULL,
    day integer NOT NULL,
    CONSTRAINT dim_date_pkey PRIMARY KEY (sk_date)
);

CREATE TABLE IF NOT EXISTS dwschema.fact_sale
(
    sk_product integer NOT NULL,
    sk_client integer NOT NULL,
    sk_localidade integer NOT NULL,
    sk_date integer NOT NULL,
    qtd integer NOT NULL,
    price_sale numeric(10,2) NOT NULL,
    coust_product numeric(10,2) NOT NULL,
    revenue_sale numeric(10,2) NOT NULL,
    CONSTRAINT fact_sale_pkey PRIMARY KEY (sk_product, sk_client, sk_loc, sk_date),
    CONSTRAINT fact_sale_sk_client_fkey FOREIGN KEY (sk_client) REFERENCES dwschema.dim_client (sk_client),
    CONSTRAINT fact_sale_sk_loc_fkey FOREIGN KEY (sk_loc) REFERENCES dwschema.dim_loc (sk_loc),
    CONSTRAINT fact_sale_sk_product_fkey FOREIGN KEY (sk_product) REFERENCES dwschema.dim_product (sk_product),
    CONSTRAINT fact_sale_sk_date_fkey FOREIGN KEY (sk_date) REFERENCES dwschema.dim_date (sk_date)
);
