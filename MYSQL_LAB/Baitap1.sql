create database bai2;
use bai2;

create table Department(
    DepartmentID int not null primary key auto_increment,
    DepartmentName varchar(100) not null
);
create table Position (
    PositionID int not null primary key auto_increment,
    PositionName varchar(200)
);
create table Account (
    AccountID int not null primary key auto_increment,
    Email varchar(50) not null,
    Username varchar(100) not null,
    Fullname varchar(100) not null,
    DepartmentID int,
    PositionID int,
    CreateDate datetime not null
);
create table GroupTable (
    GroupID int primary key NOT NULL AUTO_INCREMENT,
    GroupName varchar(100),
    CreatorID int,
    CreateDate datetime NOT NULL
 ); 
 create table GroupAccount (
    GroupID int primary key not null auto_increment,
    AccountID int,
    CreateDate datetime not null
);
create table TypeQuetion (
    TypeID int primary key auto_increment not null,
    TypeName varchar(100) not null
);
create table CategoryQuestion (
    CategoryID int primary key auto_increment not null,
    CategoryName varchar(100) not null
);
create table Question (
    QuestionID int primary key auto_increment not null,
    Content text not null,
    CategoryID int,
    TyID int,
    CreatorID int, 
    CreateDate datetime not null
);
create table Answer (
   AnswerID int primary key auto_increment not null,
   Content text not null,
   QuestionID  int not null,
   isCorrect boolean not null 
);
create table Exam (
   ExamID int primary key auto_increment not null,
   code varchar(50) not null,
   Title varchar(200) not null,
    CategoryID int,
   Duration int not null,
   CreatorID int,
   CreateData datetime not null
);
create table ExamQuestion (
   ExamID int  not null,
   QuestionID int  not null,
   primary key (ExamID, QuestionID),
   foreign key (ExamID) references Exam(ExamID),
   foreign key (QuestionID) references Question(QuestionID)
)