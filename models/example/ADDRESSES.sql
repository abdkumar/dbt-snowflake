{{ config(materialized='table') }}

WITH addresses as (
    SELECT UPPER(CITY),
    ADDRESS_1,
    'UNITED STATES' AS COUNTRY
    FROM MY_DB.TEST.ADDRESSES
    WHERE CITY='San Mateo'
)

SELECT * FROM addresses