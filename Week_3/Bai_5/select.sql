use QuanLyBanHang;
insert into customer
values (1, "Minh Quan", 10),
       (2, "Ngoc Oanh", 20),
       (3, "Hong Ha", 50);


insert into oID
VALUES ( 1, 1
       , 3 / 21 / 2006
       , Null),
       ( 2, 2
       , 3 / 23 / 2006
       , Null),
       (3, 1,
        3 / 16 / 2006,
        Null);

INSERT INTO product
values (1,
        "May Giat",
        3),
       (2,
        "Tu Lanh",
        5),
       (3,
        "Dieu Hoa", 7),
       (4,
        "Quat",
        1),
       (5,
        "Bep Dien",
        2);
insert into orderdetail
values (1, 1, 3),
       (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);

SELECT oID, oDate, oPrice
FROM OrderTable;

SELECT c.cID, c.cName, p.pName
FROM Customer c
         JOIN OrderTable o ON c.cID = o.cID
         JOIN OrderDetail od ON o.oID = od.oID
         JOIN Product p ON od.pID = p.pID;
SELECT c.cName
FROM Customer c
         LEFT JOIN OrderTable o ON c.cID = o.cID
WHERE o.oID IS NULL;

SELECT o.oID, o.oDate, SUM(od.odQTY * p.pPrice) AS totalPrice
FROM [Order] o
    JOIN OrderDetail od ON o.oID = od.oID
    JOIN Product p ON od.pID = p.pID
GROUP BY o.oID, o.oDate;

