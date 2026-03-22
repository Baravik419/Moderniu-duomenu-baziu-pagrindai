USE DATABASE F1_DB;
USE SCHEMA RAW;

/*Ikeliam strukturizuotus duomenis*/
CREATE OR REPLACE FILE FORMAT CSV_FORMAT
TYPE = 'CSV'
SKIP_HEADER = 1
FIELD_OPTIONALLY_ENCLOSED_BY = '"';

/*Sukuriam stage duomenu ikelimui*/
CREATE OR REPLACE STAGE F1_CSV_STAGE
FILE_FORMAT = CSV_FORMAT;

/*Lenteles kurimas duomenims*/
CREATE OR REPLACE TABLE drivers_csv (
    meeting_key INT,
    session_key INT,
    driver_number INT,
    broadcast_name STRING,
    full_name STRING,
    name_acronym STRING,
    team_name STRING,
    team_colour STRING,
    first_name STRING,
    last_name STRING,
    headshot_url STRING,
    country_code STRING
);