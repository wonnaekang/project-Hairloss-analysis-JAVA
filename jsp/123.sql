drop table interest_pro;
drop table product cascade constraints;
drop table survey;
drop table result;
drop table mr_member cascade constraints;

drop sequence pro_seq;
drop sequence sur_seq;
drop sequence res_seq;

--ȸ�� ���̺� ����
create table mr_member(
ID varchar2(100) primary key,
PW varchar2(100) not null,
EMAIL varchar2(500) unique not null 
);

--������ȣ ������ ����(sur_seq)
create sequence sur_seq
increment by 1
start with 1;

--�������� ���̺� ����
create table survey(
sur_num number primary key,
sur_id varchar2(100) not null,
sur_date date not null,
que1 varchar2(2) not null,
que2 varchar2(2) not null,
que3 varchar2(2) not null,
que4 varchar2(2) not null,
que5 varchar2(2) not null,
que6 varchar2(2) not null,
que7 varchar2(2) not null,
que8 varchar2(2) not null,
que9 varchar2(2) not null,
que10 varchar2(2) not null,
constraint sur_id_fk foreign key (sur_id) references mr_member(ID)
);

--���ܹ�ȣ ������ ����(res_seq)
create sequence res_seq
increment by 1
start with 1;

--���ܰ�� ���̺� ����
create table result(
res_num number primary key,
mem_id varchar2(100) not null,
res_date date not null,
res varchar2(1000) not null,
constraint res_id_fk foreign key (mem_id) references mr_member(ID)
);

--��ǰ��ȣ ������ ����(pro_seq)
create sequence pro_seq
increment by 1
start with 1;

--��ǰ ���̺� ����
create table product(
pro_num number primary key,
pro_name varchar2(3000) not null,
pro_url varchar2(3000) not null unique
);

--������ǰ ���̺� ����
create table interest_pro(
inter_date date,
pro_name varchar2(3000) not null,
pro_url varchar2(3000) not null,
mem_id varchar2(100) not null,
constraint inter_pro_pk primary key (mem_id,pro_url),
constraint interest_mem_fk foreign key (mem_id) references mr_member(id),
constraint interest_pro_fk foreign key (pro_url) references product(pro_url)
);
--������ ����
delete from test where email = '123@456';

--������ ����
update test set pw = '1234' where name = '1'; 

--������ �˻�(����������)
select * from test
select * from result order by res_num;
select * from interest_pro;
delete from result where res_num = 63;
delete from interest_pro where mem_id = 'kang';


insert into product values(pro_seq.nextval,'�������̾�TS��Ǫ','https://search.shopping.naver.com/search/all?query=�������̾�TS��Ǫ');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� ����ɾ� ������','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ����ɾ������');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� �����ɾ� ������ ��߿�','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ���ɾ������¸�߿�');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� �߰Ǽ� ����','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ��߰Ǽ�����');
insert into product values(pro_seq.nextval,'�ھ����� Ż�������ɾ� ���� ����','https://search.shopping.naver.com/search/all?query=�ھ�����Ż�������ɾ���������');
insert into product values(pro_seq.nextval,'���ͱ׷�Ʈ �ʱ� Ż�������ɾ� ��밢��','https://search.shopping.naver.com/search/all?query=���ͱ׷�Ʈ�ʱ�Ż�������ɾ��밢��');
insert into product values(pro_seq.nextval,'���ͱ׷�Ʈ �ʱ� Ż�������ɾ� ���� ������','https://search.shopping.naver.com/search/all?query=���ͱ׷�Ʈ�ʱ�Ż�������ɾ����������');
insert into product values(pro_seq.nextval,'���ͱ׷�Ʈ  Ż������ �����ɾ� ������ ��߿�','https://search.shopping.naver.com/search/all?query=���ͱ׷�ƮŻ�����������ɾ������¸�߿�');
insert into product values(pro_seq.nextval,'���� ���� �� Ż�� ��Ǫ','https://search.shopping.naver.com/search/all?query=���͹�����Ż��Ǫ');
insert into product values(pro_seq.nextval,'�޸��� ������','https://search.shopping.naver.com/search/all?query=�޸���������');
insert into product values(pro_seq.nextval,'�ٽ� ������','https://search.shopping.naver.com/search/all?query=�ٽ�������');
insert into product values(pro_seq.nextval,'���� ���� ������','https://search.shopping.naver.com/search/all?query=���͹���������');
insert into product values(pro_seq.nextval,'���� ���� ���Ʈ��Ʈ��Ʈ','https://search.shopping.naver.com/search/all?query=���͹������Ʈ��Ʈ��Ʈ');
insert into product values(pro_seq.nextval,'��彺�� ���Ʈ��Ʈ��Ʈ �� �����̾�','https://search.shopping.naver.com/search/all?query=��彺�����Ʈ��Ʈ��Ʈ�������̾�');
insert into product values(pro_seq.nextval,'�� ���Ʈ��Ʈ��Ʈ','https://search.shopping.naver.com/search/all?query=�����Ʈ��Ʈ��Ʈ');
insert into product values(pro_seq.nextval,'������ ��ä','https://search.shopping.naver.com/search/all?query=��������ä');
insert into product values(pro_seq.nextval,'�ٽ� ��ä','https://search.shopping.naver.com/search/all?query=�ٽ���ä');
insert into product values(pro_seq.nextval,'ǻ���� ��ä','https://search.shopping.naver.com/search/all?query=ǻ������ä');
insert into product values(pro_seq.nextval,'�ڸ�� ��ġ ��ä','https://search.shopping.naver.com/search/all?query=�ڸ����ġ��ä');
insert into product values(pro_seq.nextval,'������ ���귯��','https://search.shopping.naver.com/search/all?query=���������귯��');
insert into product values(pro_seq.nextval,'LG���� �޵����','https://search.shopping.naver.com/search/all?query=LG���󿤸޵����');



