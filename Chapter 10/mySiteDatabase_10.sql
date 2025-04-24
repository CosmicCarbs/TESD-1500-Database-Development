USE donation;

INSERT INTO login VALUES
(1, 'Dan Smith', '375 North Lagoon Drive', 'Provo'),
(2, 'Donkey Teeth', '84 West Duke Street', 'Krabby'),
(3, 'Quatro Quatro', '75932 Highland Avenue', 'Crazytown');
(4, 'Davoin Shower-Handel', '25 Oak Street', 'Airport West'),
(5, "L'Carpetron Dookmarriot", '1/47 Haines Avenue', 'Box Hill'),
(6, 'T.J. Juckson', '357 North Road', 'Yarraville');

INSERT INTO donation VALUES
(1, 1, 15, 2023-12-15, 'Pin + Game'),
(2, 2, 5, 2024-02-22, 'Pin'),
(3, 4, 11, 2024-03-04, 'Pin + Game'),
(4, 1, 30, 2024-07-11, 'Pin + Game + Beta'),
(5, 3, 1, 2025-01-01, '');

SELECT *
FROM donation
WHERE LoginID = 1;

SELECT login.LoginID, Name, Address, City
FROM donation, login
WHERE Rewards LIKE '%Pin%';

CREATE TABLE `useless` (
  `LoginID` int(11) NOT NULL,
  `Lottery` int(11) NOT NULL,
  `Date` date NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO useless VALUES
(1, RAND() * 9 + 1, 2023-12-15),
(2, RAND() * 9 + 1, 2024-02-22),
(3, RAND() * 9 + 1, 2025-01-01),
(4, RAND() * 9 + 1, 2024-03-04);

DROP TABLE useless;