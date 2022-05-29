ty=# \d cust1;
                                    Table "public.cust1"
 Column  |         Type          | Collation | Nullable |              Default               
---------+-----------------------+-----------+----------+------------------------------------
 cno     | integer               |           | not null | nextval('cust1_cno_seq'::regclass)
 cname   | character varying(50) |           | not null | 
 cbday   | date                  |           | not null | 
 cgender | character varying(10) |           |          | 
 cphone  | numeric(10,0)         |           | not null | 
 caddr   | text                  |           | not null | 
Indexes:
    "cust1_pkey" PRIMARY KEY, btree (cno)
    "cust1_cphone_key" UNIQUE CONSTRAINT, btree (cphone)
Referenced by:
    TABLE "orders" CONSTRAINT "orders_cno_fkey" FOREIGN KEY (cno) REFERENCES cust1(cno)




create table admin(aid int primary key,aname varchar(50),aphone numeric(10) unique,aaddr text);

create table orders(oid int primary key,odate date not null,otime time not null,otype varchar(10) not null,ordered_qty int check(ordered_qty>=10),deldate date not null,cno int references cust1, aid int references admin);
CREATE TABLE


ty=# create table cust_login(username varchar(50) primary key,password varchar(50) not null,cno int references cust1);
CREATE TABLE


ty=# alter table cust_login add constraint username unique(username);
ALTER TABLE

ty=# alter table supplier_login alter column password type text;
ALTER TABLE

