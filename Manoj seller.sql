USE GROOMKART;
CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "GROOM STYLE", "9876200001", "groomstyle@gmail.com", "Chennai"),
(202, "BEARD CARE HUB", "9876200002", "beardcarehub@gmail.com", "Madurai"),
(203, "MEN STYLE", "9876200003", "menstyle@gmail.com", "Coimbatore"),
(204, "GROOMING WORLD", "9876200004", "groomingworld@gmail.com", "Salem"),
(205, "BEARD MART", "9876200005", "beardmart@gmail.com", "Trichy"),
(206, "GROOM CARE", "9876200006", "groomcare@gmail.com", "Chennai"),
(207, "STYLE HUB", "9876200007", "stylehub@gmail.com", "Madurai"),
(208, "MEN CARE STORE", "9876200008", "mencarestore@gmail.com", "Coimbatore"),
(209, "GROOM PLUS", "9876200009", "groomplus@gmail.com", "Salem"),
(210, "BEAUTY MEN", "9876200010", "beautymen@gmail.com", "Trichy"),
(211, "HAIR STYLE HUB", "9876200011", "hairstylehub@gmail.com", "Chennai"),
(212, "GROOM HOUSE", "9876200012", "groomhouse@gmail.com", "Madurai"),
(213, "MEN ESSENTIALS", "9876200013", "menessentials@gmail.com", "Coimbatore"),
(214, "BEARD WORLD", "9876200014", "beardworld@gmail.com", "Salem"),
(215, "GROOM MART", "9876200015", "groommart@gmail.com", "Trichy"),
(216, "STYLE CARE", "9876200016", "stylecare@gmail.com", "Chennai"),
(217, "MEN GROOMING HUB", "9876200017", "mengroominghub@gmail.com", "Madurai"),
(218, "BEARD ZONE", "9876200018", "beardzone@gmail.com", "Coimbatore"),
(219, "GROOM STORE", "9876200019", "groomstore@gmail.com", "Salem"),
(220, "MEN STYLE MART", "9876200020", "menstylemart@gmail.com", "Trichy"),
(221, "GROOM CARE PLUS", "9876200021", "groomcareplus@gmail.com", "Chennai"),
(222, "BEARD HOUSE", "9876200022", "beardhouse@gmail.com", "Madurai"),
(223, "MEN BEAUTY STORE", "9876200023", "menbeautystore@gmail.com", "Coimbatore"),
(224, "GROOM EXPRESS", "9876200024", "groomexpress@gmail.com", "Salem"),
(225, "PREMIUM GROOM", "9876200025", "premiumgroom@gmail.com", "Trichy"),
(226, "STYLE WORLD", "9876200026", "styleworld@gmail.com", "Chennai"),
(227, "GROOMING POINT", "9876200027", "groomingpoint@gmail.com", "Madurai"),
(228, "BEARD PLUS", "9876200028", "beardplus@gmail.com", "Coimbatore"),
(229, "MEN CARE PLUS", "9876200029", "mencareplus@gmail.com", "Salem"),
(230, "GROOM WORLD", "9876200030", "groomworld@gmail.com", "Trichy");

SELECT * FROM Seller;

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 35),
(302, 102, 202, "AVAILABLE", 25),
(303, 103, 203, "AVAILABLE", 20),
(304, 104, 204, "UNAVAILABLE",0),
(305, 105, 205, "AVAILABLE", 30),

(306, 106, 206, "AVAILABLE", 40),
(307, 107, 207, "AVAILABLE", 30),
(308, 109, 209, "AVAILABLE", 20),
(309, 110, 210, "AVAILABLE", 25),

(310, 111, 211, "AVAILABLE", 35),
(311, 112, 212, "AVAILABLE", 30),
(312, 113, 213, "AVAILABLE", 25),
(313, 114, 214, "AVAILABLE", 30),
(314, 115, 215, "AVAILABLE", 20),

(315, 116, 216, "AVAILABLE", 20),
(316, 117, 217, "AVAILABLE", 30),
(317, 118, 218, "AVAILABLE", 15),
(318, 119, 219, "AVAILABLE", 35),
(319, 120, 220, "AVAILABLE", 10),

(320, 126, 226, "AVAILABLE", 30),
(321, 127, 227, "AVAILABLE", 25),
(322, 128, 228, "AVAILABLE", 40),
(323, 129, 229, "AVAILABLE", 25),
(324, 130, 230, "AVAILABLE", 35);

SELECT * FROM Inventory;

UPDATE Inventory
SET Stock = 18,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 304;

SELECT * FROM Inventory
WHERE InventoryID = 304;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 312;

SELECT * FROM Inventory
WHERE InventoryID = 312;

UPDATE Inventory
SET Stock = 45,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 306;

SELECT * FROM Inventory
WHERE InventoryID = 306;

UPDATE Seller
SET ContactNo = "9865432107"
WHERE SellerID = 209;

SELECT * FROM Seller
WHERE SellerID = 209;

DELETE FROM Inventory
WHERE InventoryID = 323;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;

SELECT * FROM Seller;