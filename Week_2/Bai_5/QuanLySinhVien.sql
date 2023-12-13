create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer (
                          cID int AUTO_INCREMENT primary key,
                          cName varchar(50),
                          cAge int

);
create table OrderTable(
                           oID int AUTO_INCREMENT primary key ,
                           cID int,
                           oDate datetime,
                           oTotalPrice int,
                           FOREIGN KEY (cID) REFERENCES Customer(cID)
);

create table Product(
                        pID int AUTO_INCREMENT primary key ,
                        pName varchar(50),
                        pPrice INT
);
CREATE TABLE OrderDetail(
                            oID int ,
                            pID int ,
                            odQTY int,
                            primary key (oID,pID),
                            FOREIGN KEY (oID) references OrderTable(oID),
                            FOREIGN KEY (pID) references Product(pID)
)