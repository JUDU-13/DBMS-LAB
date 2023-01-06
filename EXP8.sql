#####################################################################################
create table BANK(bankcode varchar(3) primary key,bankname varchar(30) not null,headoffice varchar(15),branches integer not null check(branches>0));

insert into Bank values('SBI', 'STATE BANK INDIA', 'Delhi','50'); 
insert into Bank values('FB', 'FEDERAL BANK', 'Eranakulam','40'); 
insert into Bank values('SBT','STATE BANK TRAVANCORE', 'Kottayam', '35'); 
insert into Bank values('AX', 'AXIS BANK ','Eranakulam','25');
insert into Bank values('SIB', 'SOUTH INDIAN BANK ','Eranakulam', '38'); 
select * from Bank;

#####################################################################################
create table Branch(branchid varchar(3),branchname varchar(30) DEFAULT'New Delhi',bankcode varchar(3),primary key(branchid));
ALTER TABLE Branch ADD FOREIGN KEY(bankcode) references Bank(bankcode);

insert into Branch values('101', DEFAULT,'SBI');
insert into Branch values('102', DEFAULT, 'FB'); 
insert into Branch values('103', DEFAULT, 'SBT');
insert into Branch values('104', DEFAULT, 'AX'); 
insert into Branch values('105',DEFAULT,'SIB');
select *from Branch;

delete from Bank where bankcode='SBT';
delete from Branch where bankcode='SBT'; 
insert into Branch values('106', 'Kottayam','SBI');
select * from Branch;

#####################################################################################

ALTER TABLE Branch DROP PRIMARY KEY;
CREATE VIEW bank_headoffice AS SELECT bankcode,bankname,headoffice, branches FROM Bank WHERE headoffice='Eranakulam';

select *from Bank_headoffice;

CREATE VIEW bank_branch AS SELECT branchid,branchname,bankcode FROM Branch WHERE branchname='Kottayam';
select *from bank_branch;
