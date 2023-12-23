create database tester25;
use tester25;

create table customer(
     customer_name varchar(100),
     phone varchar(11),
     age int,
     adress varchar(500)
);

create table Trainee(
     TrainneId int primary key auto_increment,
     FullName varchar(100),
     BirthDate date,
     Gender enum('male','female','unknown'),
     EtIQ int,
     EtGmath int,
     EtEnglish int,
     Tranningclass  varchar(100),
     EvalationNot varchar(100),
     constraint CHECK_EtIQ CHECK (EtIQ > 0 AND EtIQ < 20)
);

insert into Trainee(FullName,BirthDate,Gender,EtIQ,EtGmath,EtEnglish,Tranningclass,EvalationNot)
value('Nguyen Van A', '1999-10-10', 'male' , 10 , 10, 10, 'TESTER25', 'TEST');

select * from Trainee

create table logtransaction