-- ================================
-- 1. DROP AND CREATE TABLE
-- ================================
-- This section removes the existing table (if it exists)
-- and creates a new table with appropriate data types
DROP TABLE IF EXISTS prime_titles;

CREATE TABLE prime_titles (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title TEXT,
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(20),
    listed_in TEXT,
    description TEXT
);

-- ================================
-- 2. LOAD DATA FROM CSV INTO TABLE
-- ================================
-- Loading data from CSV file stored in the secure-file-priv path
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/amazon_prime_titles.csv'
INTO TABLE prime_titles
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ================================
-- 3. INITIAL DATA PREVIEW
-- ================================
-- Quickly preview a sample of the data and total record count
SELECT * FROM prime_titles LIMIT 10;
SELECT COUNT(*) AS total_records FROM prime_titles;

-- ================================
-- 4. NULL VALUE ANALYSIS
-- ================================
-- Check how many null or placeholder values exist in each column
SELECT
    SUM(CASE WHEN show_id IS NULL OR show_id = '' THEN 1 ELSE 0 END) AS null_show_id,
    SUM(CASE WHEN type IS NULL OR type = '' THEN 1 ELSE 0 END) AS null_type,
    SUM(CASE WHEN title IS NULL OR title = '' THEN 1 ELSE 0 END) AS null_title,
    SUM(CASE WHEN director IS NULL OR director = 'Unavailable' THEN 1 ELSE 0 END) AS null_director,
    SUM(CASE WHEN cast IS NULL OR cast = 'Unavailable' THEN 1 ELSE 0 END) AS null_cast,
    SUM(CASE WHEN country IS NULL OR country = 'Unavailable' THEN 1 ELSE 0 END) AS null_country,
    SUM(CASE WHEN date_added IS NULL OR date_added = '' THEN 1 ELSE 0 END) AS null_date_added,
    SUM(CASE WHEN release_year IS NULL THEN 1 ELSE 0 END) AS null_release_year,
    SUM(CASE WHEN rating IS NULL OR rating = 'Unavailable' THEN 1 ELSE 0 END) AS null_rating,
    SUM(CASE WHEN duration IS NULL OR duration = '' THEN 1 ELSE 0 END) AS null_duration,
    SUM(CASE WHEN listed_in IS NULL OR listed_in = '' THEN 1 ELSE 0 END) AS null_listed_in,
    SUM(CASE WHEN description IS NULL OR description = '' THEN 1 ELSE 0 END) AS null_description
FROM prime_titles;

-- ================================
-- 5. DATA CLEANING
-- ================================
-- Replace placeholder values with proper NULLs
SET SQL_SAFE_UPDATES = 0;

UPDATE prime_titles SET director = NULL WHERE director = 'Unavailable';
UPDATE prime_titles SET cast = NULL WHERE cast = 'Unavailable';
UPDATE prime_titles SET country = NULL WHERE country = 'Unavailable';
UPDATE prime_titles SET rating = NULL WHERE rating = 'Unavailable';
UPDATE prime_titles SET date_added = NULL WHERE date_added = 'Unavailable';

-- Replace actual NULLs or empty strings in date_added with 'Unknown'
UPDATE prime_titles
SET date_added = 'Unknown'
WHERE date_added IS NULL OR TRIM(date_added) = '';

-- ================================
-- 6. ANALYSIS: Content Type Distribution
-- ================================
-- Analyze how many Movies and TV Shows are available
SELECT type, COUNT(*) AS count 
FROM prime_titles 
GROUP BY type;

-- ================================
-- 7. ANALYSIS: Country-wise Content Count
-- ================================
-- Top 10 countries producing the most content (excluding unavailable)
SELECT country, COUNT(*) AS count 
FROM prime_titles 
WHERE country IS NOT NULL
GROUP BY country 
ORDER BY count DESC 
LIMIT 10;

-- ================================
-- 8. ANALYSIS: Most Frequent Directors
-- ================================
-- Top 10 directors with the most content (excluding unavailable)
SELECT director, COUNT(*) AS count 
FROM prime_titles 
WHERE director IS NOT NULL
GROUP BY director 
ORDER BY count DESC 
LIMIT 10;

-- ================================
-- 9. ANALYSIS: Rating Distribution
-- ================================
-- Understand the spread of content ratings
SELECT rating, COUNT(*) AS count 
FROM prime_titles 
WHERE rating IS NOT NULL
GROUP BY rating 
ORDER BY count DESC;

-- ================================
-- 10. ANALYSIS: Popular Genres
-- ================================
-- Top 10 genres by frequency
SELECT listed_in AS genre, COUNT(*) AS count 
FROM prime_titles 
GROUP BY genre 
ORDER BY count DESC 
LIMIT 10;

-- ================================
-- 11. ANALYSIS: Content by Release Year
-- ================================
-- How many titles were released each year
SELECT release_year, COUNT(*) AS count 
FROM prime_titles 
GROUP BY release_year 
ORDER BY release_year;

-- ================================
-- 12. ANALYSIS: Longest Movies
-- ================================
-- Top 10 longest movies by duration
SELECT title, duration 
FROM prime_titles 
WHERE type = 'Movie' AND duration REGEXP '^[0-9]+ min'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC 
LIMIT 10;

-- ================================
-- 13. ANALYSIS: Longest TV Shows
-- ================================
-- Top 10 TV shows with the most seasons
SELECT title, duration 
FROM prime_titles 
WHERE type = 'TV Show' AND duration REGEXP 'season'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC 
LIMIT 10;
