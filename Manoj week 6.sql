USE GROOMKART;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(200),
    ReviewDate DATE,
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(701, 'MANOJ', 101, 'Good product', '2026-09-10'),
(702, 'SIVA', 102, 'Very good quality', '2026-09-11'),
(703, 'VISHWA', 106, 'Nice product', '2026-09-12'),
(704, 'ROHITH', 110, 'Bad quality', '2026-09-13'),
(705, 'GOKUL', 111, 'Worth the price', '2026-09-14');

INSERT INTO Rating VALUES
(801, 701, 5),
(802, 702, 4),
(803, 703, 5),
(804, 704, 2),
(805, 705, 4);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Review
WHERE ProductID = 101;

SELECT * FROM Review
WHERE CustomerName = 'MANOJ';

SELECT ReviewID, Rating
FROM Rating
WHERE Rating = 5;

SELECT ReviewID, Rating
FROM Rating
WHERE Rating < 3;

UPDATE Review
SET ReviewText = 'Excellent product'
WHERE ReviewID = 701;

UPDATE Rating
SET Rating = 4
WHERE RatingID = 801;

SELECT * FROM Review
ORDER BY ReviewDate DESC;

SELECT COUNT(*) AS TotalReviews
FROM Review;

SELECT Review.ReviewID, Review.CustomerName,
       Review.ProductID, Review.ReviewText,
       Rating.Rating
FROM Review
JOIN Rating
ON Review.ReviewID = Rating.ReviewID;