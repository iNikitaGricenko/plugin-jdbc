CREATE OR REPLACE TABLE snowflake_types (
    nu text NULL,
    n number,
    num10 number(10,1),
    dec decimal(20,2),
    numeric numeric(30,3),
    int int,
    integer integer,
    f float,
    dp double precision,
    r real,
    v50 varchar(50),
    c char,
    c10 char(10),
    s string,
    s20 string(20),
    t text,
    t30 text(30),
    b boolean,
    d date,
    ti time,
    ts  timestamp,
    ts_tz timestamp_tz,
    ts_ntz timestamp_ntz,
    ts_ltz timestamp_ltz,
    v variant,
    o object,
    a array,
    g geography
);

INSERT INTO snowflake_types
(
    nu,
    n,
    num10,
    dec,
    numeric,
    int,
    integer,
    f,
    dp,
    r,
    v50,
    c,
    c10,
    s,
    s20,
    t,
    t30,
    b,
    d,
    ti,
    ts,
    ts_tz,
    ts_ntz,
    ts_ltz,
    v,
    o,
    a,
    g
)
SELECT
    NULL,
    2147483645.1234,
    123456.1,
    2147483645.1234,
    2147483645.1234,
    2147483645,
    2147483645,
    2147483645.1234,
    2147483645.1234,
    2147483645.1234,
    'aa',
    'b',
    'cc',
    'dd',
    'ee',
    'ff',
    'gg',
    TRUE,
    date '2011-10-29',
    time '10:03:56',
    timestamp '2009-09-15 10:59:43',
    '2017-01-01 12:00:00'::timestamp_tz,
    '2014-01-02 16:00:00 +00:00',
    '2014-01-02 16:00:00 +08:00',
    to_variant(parse_json('{"key3": "value3", "key4": "value4"}')),
    object_construct(
        'name', 'Jones'::variant,
        'age',  42::variant
        ),
    array_construct(12, 'twelve', null),
    'POINT(-122.35 37.55)' -- 'LINESTRING(-124.20 42.00, -120.01 41.99)'