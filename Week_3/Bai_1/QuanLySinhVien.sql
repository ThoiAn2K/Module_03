create database QuanLySinhVien;
use quanlysinhvien;
create table Class
(
    classID   int         not null auto_increment primary key,
    ClassName varchar(60) not null,
    StartDate DATETIME    NOT NULL,
    Startus   BIT
);
create table Student
(
    StudentID     INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       varchar(20),
    Status      BIT,
    ClassID     int         not null,
    FOREIGN KEY (ClassID) references Class (classID)
);
create table Subject(
                        SubID int not null auto_increment primary key ,
                        SubName VARCHAR(30) not null ,
                        Credit TINYINT not null default 1 check ( Credit >= 1 ),
                        Status BIT default 1
);
create table Mark(
                     MarkID int not null auto_increment primary key ,
                     SubID int not null ,
                     StudentID int not null ,
                     Mark FLOAT default 0 check ( Mark between 0 and 100),
                     ExamTimes TINYINT default 1,
                     UNIQUE (SubID,StudentID),
                     foreign key (SubID) references Subject(SubID),
                     foreign key (StudentID) references Student(StudentID)
)
