-- Allow Debezium user to connect to the database
GRANT CONNECT ON DATABASE postgres TO debezium;

-- Allow schema usage 
GRANT USAGE ON SCHEMA public TO debezium;

-- Allow Debezium to read the products table
GRANT SELECT ON TABLE public.products TO debezium;

-- Also grant future SELECT on new tables in public schema
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO debezium;

-- Grant usage on sequences
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO debezium;

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT USAGE, SELECT ON SEQUENCES TO debezium;
