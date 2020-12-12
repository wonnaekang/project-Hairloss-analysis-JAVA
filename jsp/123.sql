drop table interest_pro;
drop table product cascade constraints;
drop table survey;
drop table result;
drop table mr_member cascade constraints;

drop sequence pro_seq;
drop sequence sur_seq;
drop sequence res_seq;

--회원 테이블 생성
create table mr_member(
ID varchar2(100) primary key,
PW varchar2(100) not null,
EMAIL varchar2(500) unique not null 
);

--설문번호 시퀀스 생성(sur_seq)
create sequence sur_seq
increment by 1
start with 1;

--설문조사 테이블 생성
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

--진단번호 시퀀스 생성(res_seq)
create sequence res_seq
increment by 1
start with 1;

--진단결과 테이블 생성
create table result(
res_num number primary key,
mem_id varchar2(100) not null,
res_date date not null,
res varchar2(1000) not null,
constraint res_id_fk foreign key (mem_id) references mr_member(ID)
);

--제품번호 시퀀스 생성(pro_seq)
create sequence pro_seq
increment by 1
start with 1;

--제품 테이블 생성
create table product(
pro_num number primary key,
pro_name varchar2(3000) not null,
pro_url varchar2(3000) not null unique
);

--관심제품 테이블 생성
create table interest_pro(
inter_date date,
pro_name varchar2(3000) not null,
pro_url varchar2(3000) not null,
mem_id varchar2(100) not null,
constraint inter_pro_pk primary key (mem_id,pro_url),
constraint interest_mem_fk foreign key (mem_id) references mr_member(id),
constraint interest_pro_fk foreign key (pro_url) references product(pro_url)
);
--데이터 삭제
delete from test where email = '123@456';

--데이터 수정
update test set pw = '1234' where name = '1'; 

--데이터 검색(조건절포함)
select * from test
select * from result order by res_num;
select * from interest_pro;
delete from result where res_num = 63;
delete from interest_pro where mem_id = 'kang';


insert into product values(pro_seq.nextval,'뉴프리미엄TS샴푸','https://search.shopping.naver.com/search/all?query=뉴프리미엄TS샴푸');
insert into product values(pro_seq.nextval,'자양윤모 탈모증상케어 비듬케어 비듬두피','https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어비듬케어비듬두피');
insert into product values(pro_seq.nextval,'자양윤모 탈모증상케어 볼륨케어 힘없는 모발용','https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어볼륨케어힘없는모발용');
insert into product values(pro_seq.nextval,'자양윤모 탈모증상케어 중건성 두피','https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어중건성두피');
insert into product values(pro_seq.nextval,'자양윤모 탈모증상케어 지성 두피','https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어지성두피');
insert into product values(pro_seq.nextval,'닥터그루트 초기 탈모증상케어 비듬각질','https://search.shopping.naver.com/search/all?query=닥터그루트초기탈모증상케어비듬각질');
insert into product values(pro_seq.nextval,'닥터그루트 초기 탈모증상케어 건조 가려움','https://search.shopping.naver.com/search/all?query=닥터그루트초기탈모증상케어건조가려움');
insert into product values(pro_seq.nextval,'닥터그루트  탈모증상 집중케어 힘없는 모발용','https://search.shopping.naver.com/search/all?query=닥터그루트탈모증상집중케어힘없는모발용');
insert into product values(pro_seq.nextval,'닥터 방기원 랩 탈모 샴푸','https://search.shopping.naver.com/search/all?query=닥터방기원랩탈모샴푸');
insert into product values(pro_seq.nextval,'달리프 헤어토닉','https://search.shopping.naver.com/search/all?query=달리프헤어토닉');
insert into product values(pro_seq.nextval,'다슈 헤어토닉','https://search.shopping.naver.com/search/all?query=다슈헤어토닉');
insert into product values(pro_seq.nextval,'닥터 방기원 헤어토닉','https://search.shopping.naver.com/search/all?query=닥터방기원헤어토닉');
insert into product values(pro_seq.nextval,'닥터 방기원 헤어트리트먼트','https://search.shopping.naver.com/search/all?query=닥터방기원헤어트리트먼트');
insert into product values(pro_seq.nextval,'헤드스파 헤어트리트먼트 더 프리미엄','https://search.shopping.naver.com/search/all?query=헤드스파헤어트리트먼트더프리미엄');
insert into product values(pro_seq.nextval,'려 헤어트리트먼트','https://search.shopping.naver.com/search/all?query=려헤어트리트먼트');
insert into product values(pro_seq.nextval,'블랙몬스터 흑채','https://search.shopping.naver.com/search/all?query=블랙몬스터흑채');
insert into product values(pro_seq.nextval,'다슈 흑채','https://search.shopping.naver.com/search/all?query=다슈흑채');
insert into product values(pro_seq.nextval,'퓨레드 흑채','https://search.shopping.naver.com/search/all?query=퓨레드흑채');
insert into product values(pro_seq.nextval,'박명수 헤어리치 흑채','https://search.shopping.naver.com/search/all?query=박명수헤어리치흑채');
insert into product values(pro_seq.nextval,'어해츠 헤어브러쉬','https://search.shopping.naver.com/search/all?query=어해츠헤어브러쉬');
insert into product values(pro_seq.nextval,'LG프라엘 메디헤어','https://search.shopping.naver.com/search/all?query=LG프라엘메디헤어');



