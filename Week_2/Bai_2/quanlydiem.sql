use quanlydiemthi;
create table HocSinh(
                        maHS varchar(20) primary key,
                        TenHS varchar (50),
                        NgaySinh datetime,
                        Lop varchar (20),
                        GT varchar (20)
);
CREATE TABLE MonHoc(
                       MaMH VARCHAR(20) PRIMARY KEY,
                       TenMH VARCHAR(50),
                       MaGV VARCHAR(20)

);
CREATE TABLE BangDiem(
                         MaHS VARCHAR(20),
                         MaMH VARCHAR(20),
                         DiemThi INT,
                         NgayKT DATETIME,
                         PRIMARY KEY (MaHS, MaMH),
                         FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
                         FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);
CREATE TABLE GiaoVien(
                         MaGV VARCHAR(20) PRIMARY KEY,
                         TenGV VARCHAR(20),
                         SDT VARCHAR(10)
);
alter table monhoc add constraint FK_MaGV foreign key (MaGv) references giaovien(MaGv);
