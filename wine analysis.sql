CREATE TABLE drinks (
    country VARCHAR(100),
    beer_servings FLOAT,
    spirit_servings FLOAT,
    wine_servings FLOAT,
    total_litres_of_pure_alcohol FLOAT);

INSERT INTO drinks (country, beer_servings, spirit_servings, wine_servings, total_litres_of_pure_alcohol)
VALUES
    ('Afghanistan', 0, 0, 0, 0.0),
    ('Albania', 89, 132, 54, 4.9),
    ('Algeria', 25, 0, 14, 0.7),
    ('Andorra', 245, 138, 312, 12.4),
    ('Angola', 217, 57, 45, 5.9),
    ('Antigua & Barbuda', 102, 128, 45, 4.9),
    ('Argentina', 193, 25, 221, 8.3),
    ('Armenia', 21, 179, 11, 3.8),
    ('Australia', 261, 72, 212, 10.4),
    ('Austria', 279, 75, 191, 9.7),
    ('Azerbaijan', 21, 46, 5, 1.3),
    ('Bahamas', 122, 176, 51, 6.3),
    ('Bahrain', 42, 63, 7, 2.0),
    ('Bangladesh', 0, 0, 0, 0.0),
    ('Barbados', 143, 173, 36, 6.3),
    ('Belarus', 142, 373, 42, 14.4),
    ('Belgium', 295, 84, 212, 10.5),
    ('Belize', 263, 114, 8, 6.8),
    ('Benin', 34, 4, 13, 1.1),
    ('Bhutan', 23, 0, 0, 0.4),
    ('Bolivia', 167, 41, 8, 3.8),
    ('Bosnia-Herzegovina', 76, 173, 8, 4.6),
    ('Botswana', 173, 35, 35, 5.4),
    ('Brazil', 245, 145, 16, 7.2),
    ('Brunei', 31, 2, 1, 0.6),
    ('Bulgaria', 231, 252, 94, 10.3),
    ('Burkina Faso', 25, 7, 7, 4.3),
    ('Burundi', 88, 0, 0, 6.3),
    ('Cote d''Ivoire', 37, 1, 7, 4.0),
    ('Cabo Verde', 144, 56, 16, 4.0),
    ('Cambodia', 57, 65, 1, 2.2),
    ('Cameroon', 147, 1, 4, 5.8),
    ('Canada', 240, 122, 100, 8.2),
    ('Central African Republic', 17, 2, 1, 1.8),
    ('Chad', 15, 1, 1, 0.4),
    ('Chile', 130, 124, 172, 7.6),
    ('China', 79, 192, 8, 5.0),
    ('Colombia', 159, 76, 3, 4.2),
    ('Comoros', 1, 3, 1, 0.1),
    ('Congo', 76, 1, 9, 1.7),
    ('Cook Islands', 0, 254, 74, 5.9),
    ('Costa Rica', 149, 87, 11, 4.4),
    ('Croatia', 230, 87, 254, 10.2),
    ('Cuba', 93, 137, 5, 4.2),
    ('Cyprus', 192, 154, 113, 8.2),
    ('Czech Republic', 361, 170, 134, 11.8),
    ('North Korea', 0, 0, 0, 0.0),
    ('DR Congo', 32, 3, 1, 2.3),
    ('Denmark', 224, 81, 278, 10.4),
    ('Djibouti', 15, 44, 3, 1.1),
    ('Dominica', 52, 286, 26, 6.6),
    ('Dominican Republic', 193, 147, 9, 6.2),
    ('Ecuador', 162, 74, 3, 4.2),
    ('Egypt', 6, 4, 1, 0.2),
    ('El Salvador', 52, 69, 2, 2.2),
    ('Equatorial Guinea', 92, 0, 233, 5.8),
    ('Eritrea', 18, 0, 0, 0.5),
    ('Estonia', 224, 194, 59, 9.5),
    ('Ethiopia', 20, 3, 0, 0.7),
    ('Fiji', 77, 35, 1, 2.0),
    ('Finland', 263, 133, 97, 10.0),
    ('France', 127, 151, 370, 11.8),
    ('Gabon', 347, 98, 59, 8.9),
    ('Gambia', 8, 0, 1, 2.4),
    ('Georgia', 52, 100, 149, 5.4),
    ('Germany', 346, 117, 175, 11.3),
    ('Ghana', 31, 3, 10, 1.8),
    ('Greece', 133, 112, 218, 8.3),
    ('Grenada', 199, 438, 28, 11.9),
    ('Guatemala', 53, 69, 2, 2.2),
    ('Guinea', 9, 0, 2, 0.2),
    ('Guinea-Bissau', 28, 31, 21, 2.5),
    ('Guyana', 93, 302, 1, 7.1),
    ('Haiti', 1, 326, 1, 5.9),
    ('Honduras', 69, 98, 2, 3.0),
    ('Hungary', 234, 215, 185, 11.3),
    ('Iceland', 233, 61, 78, 6.6),
    ('India', 9, 114, 0, 2.2),
    ('Indonesia', 5, 1, 0, 0.1),
    ('Iran', 0, 0, 0, 0.0),
    ('Iraq', 9, 3, 0, 0.2),
    ('Ireland', 313, 118, 165, 11.4),
    ('Israel', 63, 69, 9, 2.5),
    ('Italy', 85, 42, 237, 6.5),
    ('Jamaica', 82, 97, 9, 3.4),
    ('Japan', 77, 202, 16, 7.0) ;

select * from drinks ;

--The total number of countries in the dataset --
SELECT COUNT(*) AS total_countries FROM drinks; 

--The countries with the highest beer servings --
SELECT country, beer_servings FROM drinks ORDER BY beer_servings DESC
LIMIT 5;

--the country with the highest wine servings --
SELECT country, wine_servings FROM drinks ORDER BY wine_servings DESC
LIMIT 5;

-- the country with zero alcohol consumption --
SELECT country FROM drinks WHERE beer_servings = 0 AND spirit_servings = 0 AND wine_servings = 0;

--the country with the highest total alcohol consumption (wine+ beer+spirit)
SELECT country, (beer_servings + spirit_servings + wine_servings) AS total_alcohol_servings
FROM drinks
ORDER BY total_alcohol_servings DESC
LIMIT 5;

--the average number of servings for each type of drink --
SELECT AVG(beer_servings) AS avg_beer_servings ,  AVG(spirit_servings) AS avg_spirit_servings, AVG(wine_servings) AS avg_wine_servings FROM drinks;

--the number of countries with no alcohol consumption --
SELECT COUNT(*) AS countries_with_no_alcohol FROM drinks WHERE total_litres_of_pure_alcohol = 0;

--the countries with highest total pure alcohol consumption --
SELECT country, total_litres_of_pure_alcohol FROM drinks ORDER BY total_litres_of_pure_alcohol DESC LIMIT 10;

-- standard deviation of alcohol servings--
 SELECT STDDEV (beer_servings) AS stddev_beer_servings,STDDEV(spirit_servings) AS stddev_spirit_servings,STDDEV(wine_servings) AS stddev_wine_servings,
    STDDEV(total_litres_of_pure_alcohol) AS stddev_total_litres_of_pure_alcohol FROM drinks;

--median servings for each type of alcohol --
SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY beer_servings) AS median_beer_servings,PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY spirit_servings) AS median_spirit_servings,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY wine_servings) AS median_wine_servings,PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY total_litres_of_pure_alcohol) AS median_total_litres_of_pure_alcohol FROM drinks;

-- countries below the median alcohol cnsumption --
SELECT country, total_litres_of_pure_alcohol FROM drinks WHERE total_litres_of_pure_alcohol < ( SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY total_litres_of_pure_alcohol)
FROM drinks);

--country with beer serving greater than wine serving --
  SELECT country, beer_servings, wine_servings FROM drinks WHERE beer_servings > wine_servings;

--country with high spirit and low wine consumption --
  SELECT country, spirit_servings, wine_servings FROM drinks WHERE spirit_servings > (SELECT AVG(spirit_servings) FROM drinks)
AND wine_servings < (SELECT AVG(wine_servings) FROM drinks);


-- country with spirit consumption greater than double the beer consumption --
SELECT country, spirit_servings, beer_servings FROM drinks WHERE spirit_servings > 2 * beer_servings;

















 




