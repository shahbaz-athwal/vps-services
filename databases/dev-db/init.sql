-- Create users with different passwords
CREATE USER "study-link-owner"WITH PASSWORD '';
CREATE USER whisperella_owner WITH PASSWORD '';
CREATE USER capstone_owner WITH PASSWORD '';
-- Create databases if they don't exist
CREATE DATABASE "study-link";
CREATE DATABASE "whisperella";
CREATE DATABASE "capstone";

-- Grant privileges to users on their respective databases

-- psql -U postgres -h localhost -p 5432 -d study-link
ALTER DATABASE "study-link" OWNER TO "study-link-owner";
ALTER SCHEMA public OWNER TO "study-link-owner";
GRANT ALL ON SCHEMA public TO "study-link-owner";
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO "study-link-owner";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO "study-link-owner";
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO "study-link-owner";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO "study-link-owner";
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO "study-link-owner";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO "study-link-owner";
GRANT CREATE, USAGE ON SCHEMA public TO "study-link-owner";


-- psql -U postgres -h localhost -p 5432 -d whisperella
ALTER DATABASE whisperella OWNER TO whisperella_owner;
ALTER SCHEMA public OWNER TO whisperella_owner;
GRANT ALL ON SCHEMA public TO whisperella_owner;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO whisperella_owner;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO whisperella_owner;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO whisperella_owner;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO whisperella_owner;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO whisperella_owner;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO whisperella_owner;
GRANT CREATE, USAGE ON SCHEMA public TO whisperella_owner;

-- psql -U postgres -h localhost -p 5432 -d capstone
ALTER DATABASE capstone OWNER TO capstone_owner;
ALTER SCHEMA public OWNER TO capstone_owner;
GRANT ALL ON SCHEMA public TO capstone_owner;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO capstone_owner;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO capstone_owner;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO capstone_owner;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO capstone_owner;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO capstone_owner;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO capstone_owner;
GRANT CREATE, USAGE ON SCHEMA public TO capstone_owner;
