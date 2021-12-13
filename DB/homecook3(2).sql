CREATE TABLE  address  (
	 member_no 	number	NOT NULL primary key references member(member_no) on delete CASCADE,
	 addr_no 	number	NOT NULL,
	 receiver_name 	varchar2(100)	NOT NULL,
	 receiver_phone 	varchar2(100)	NOT NULL,
	 addr 	varchar2(100)	NOT NULL
);

CREATE TABLE  business_seller_info(
	 member_no 	number	NOT NULL primary key references member(member_no) on delete CASCADE,
	 bussniss_no 	varchar2(10)	NOT NULL,
	 trade_name 	varchar2(100)	NOT NULL,
	 representative 	varchar2(100)	NOT NULL,
	 business_location 	varchar2(100)	NOT NULL,
	 contact 	varchar2(100)	NOT NULL,
	 email 	varchar2(100)	NOT NULL
);

select * from product_category;
select * from business_seller_info;



CREATE TABLE  product_category  (
	 category_no 	number	NOT NULL primary key,
	 category 	varchar2(100)	NOT NULL
);



CREATE TABLE  product(
	 product_no 	number	NOT NULL    primary key,
	 member_no 	number	NOT NULL references business_seller_info(member_no) on delete cascade,
	 product_name 	varchar2(100)	NOT NULL,
	 product_detail     varchar2(4000)	NOT NULL,
	 manufacture_date 	date        	NOT NULL,
	 stock 	number	NOT NULL,
	 origin 	varchar2(100)	NOT NULL,
	 manufacturer 	varchar2(100)	NOT NULL,
	 manager_contact 	varchar2(50) NOT NULL,
	 c_c_contact 	varchar2(50)	NOT NULL, --consumer counseling contact 소비자상담 관련 전화 번호
	 how_to_use 	varchar2(1000),
	 precautions 	varchar2(1000),
	 expiration_date 	varchar2(100),
	 capacity 	varchar2(100),
	 price 	number	NOT NULL constraint price_check check(price between 1 and 9999999),
	 limit 	number	NOT NULL constraint limit_check check(limit between 1 and 100),
	 category_no 	number	NOT NULL references product_category(category_no) on delete cascade
);

CREATE TABLE  product_img  (
	 product_img_no 	number	NOT NULL primary key,
	 product_no 	number	NOT NULL references product(product_no) on delete cascade,
	 filename 	varchar2(1500)	NOT NULL,
	 filepath 	varchar2(1500)	NOT NULL,
	 main_img 	char(1)	NOT NULL constraint img_check check(main_img in ('Y','N')) --메인이미지이면 Y
);



CREATE TABLE  shipping_info(
	 shipping_info_no 	number	NOT NULL primary key,
	 product_no 	number	NOT NULL unique references product(product_no) on delete cascade,
	 shipping_method 	varchar2(100)	NOT NULL,
	 shipping_company 	varchar2(100)	NOT NULL,
	 shipping_fee 	varchar2(100)	NOT NULL,
	 shipping_period 	date	NOT NULL
);

CREATE TABLE  return_policy(
	 return_policy_no 	number	NOT NULL primary key,
	 product_no 	number	NOT NULL unique references product(product_no) on delete cascade,
	 return_shipping 	number	NOT NULL,
	 return_length 	varchar2(100)	NOT NULL,
	 policy_content 	varchar2(100)	NOT NULL
);

CREATE TABLE  product_review  (
	 review_no 	number	NOT NULL primary key,
    member_no 	number	NOT NULL references member(member_no) on delete cascade,
    product_no 	number	NOT NULL references product(product_no) on delete cascade,
	 review_content 	varchar2(4000)	not null,
	 star 	number	not null constraint star_check check(star between 1 and 5),
	 write_date 	date	NOT NULL
);

CREATE TABLE  review_img  (
	 review_img_no 	number	NOT NULL primary key,
	 review_no 	number	NOT NULL references product_review(review_no) on delete cascade,
	 filename 	varchar2(1500)	NOT NULL,
	 filepath 	varchar2(1500)	NOT NULL
);


CREATE TABLE  product_like  (
	 like_no 	number	NOT NULL primary key,
	 member_no 	number	NOT NULL references member(member_no) on delete cascade,
	 product_no 	number	NOT NULL references product(product_no) on delete cascade
);




CREATE TABLE  qna  (
	 qna_no 	number	not null primary key,
	 member_no 	number	NOT NULL references member(member_no) on delete cascade,
	 product_ref_no 	number	NOT NULL references product(product_no) on delete cascade,
	 qna_ref_no 	number	references qna(qna_no) on delete cascade,
	 qna_level 	number	NOT NULL constraint qna_check check(qna_level between 1 and 2),--1구매자/2판매자 
 	 qna_title 	varchar2(200)	NOT NULL,
	 qna_content 	varchar2(4000)	NOT NULL,
    write_date 	date	NOT NULL
);


create table homepage_qna(
    qna_no		number		primary key,
    member_no 	number		not null		references member(member_no) on delete cascade,
    qna_ref_no 	number				references homepage_qna(qna_no) on delete cascade,
    qna_level		number		not null,		--구매자 1 관리자 2
    qna_title		varchar(200)	not null,
    qna_content	varchar(4000)	not null,
    write_date		date		not null
);


CREATE TABLE  payment_info(
	 payment_info_code 	number	NOT NULL primary key,
	 member_no 	number	NOT NULL references member(member_no) on delete cascade,
	 receiver_name 	varchar2(100)	NOT NULL,
	 receiver_phone 	varchar2(100)	NOT NULL,
	 receiver_addr 	varchar2(100)	NOT NULL,
	 order_date 	date	NOT NULL,
	 is_deliverd 	char(1)	NOT NULL constraint payment_check check(is_deliverd in ('Y','N')),
	 payment_method 	varchar2(100)	NOT NULL
);

CREATE TABLE  return_reason (
	 return_no 	number	NOT NULL primary key,
	 return_reason 	varchar2(100)	NOT NULL
);

CREATE TABLE  returned_payment_info  (
	 payment_info_code 	number	NOT NULL primary key references payment_info(payment_info_code) on delete cascade,
	 is_reurned 	char(1)	NOT NULL constraint returned_payment_info_check check(is_reurned in ('A','Y','N')), --환불승인Y, 환불거절N, 환불 승인 이전 A,
	 return_no 	number not null references return_reason(return_no) on delete cascade
);


CREATE TABLE  homecook_deal(
	 deal_no 	number	NOT NULL primary key,
	 product_no 	number	NOT NULL references product(product_no) on delete cascade,
	 discount_rate 	number	NOT NULL constraint discount_rate_check check(discount_rate between 1 and 100),
	 discount_date 	date	not NULL,
	 discountend_date 	date	not NULL
);


CREATE TABLE  ordered_product(
	 ordered_product_no 	number	NOT NULL primary key,
	 product_no 	number	NOT NULL references product(product_no) ON DELETE SET NULL,
	 payment_info_code 	number	NOT NULL references payment_info(payment_info_code) on delete cascade,
	 quantity 	number	NOT NULL
);



ALTER TABLE member MODIFY level_no varchar2(50);
ALTER TABLE member RENAME COLUMN level_no TO member_level;
ALTER TABLE member ADD CONSTRAINT member_level_constraint check(member_level in ('일반회원','판매자','딜리버리판매자','관리자','딜리버리관리자','딜리버리라이더','라이더'));
alter table member drop constraint member_level_constraint;
ALTER TABLE member ADD delivery_level VARCHAR(50);
ALTER TABLE member ADD CONSTRAINT delivery_level_constraint check(delivery_level in ('집쿡초보','집쿡하수','집쿡중수','집쿡고수','집쿡만렙'));

select * from member;
select * from user_tables;


create sequence member_seq;		--member 테이블
create sequence business_seq;		--member 테이블
create sequence address_seq; 		--address 테이블;
create sequence product_seq; 		--product  테이블;
create sequence product_category_seq; 	--product_category 테이블;
create sequence product_like_seq;		--like 테이블;
create sequence product_img_seq; 	--product_img 테이블;
create sequence review_seq; 		--review 테이블;
create sequence qna_seq; 		--qna 테이블;
create sequence shipping_info_seq;	--shipping_info 테이블;
create sequence return_policy_seq; 	--return_policy 테이블;
create sequence orderd_product_seq; 	--orderd product 테이블;
create sequence review_img_seq; --review_img 테이블;
create sequence homecook_deal_seq; --homecook_deal 테이블;
create sequence hompage_qna_seq; --문의 테이블;


--product+shipping_info+return_policy
--product+shipping_info+return_policy+homecook_deal;

select shipping_info from user_tables;
select * from user_sequences;

select * from business_seller_info;
insert into member values(member_seq.nextval,'user'||test.nextval,'member_id'||test.nextval,'member_pw'||test.nextval,'01077778767','일반회원','집쿡초보');
insert into member values(member_seq.nextval,'user'||test.nextval,'member_id'||test.nextval,'member_pw'||test.nextval,'01077778767','판매자','집쿡초보');
insert into business_seller_info values(member_seq.currval,'01346789','이마트','대표자'||test.nextval,'강남구 강서구','01012345678','bynduck20@gmail.com');

select * from return_policy;
select * from member;
commit;
insert into return_policy values
(return_policy_seq.nextval,
5,
0,
'8',
'상품이 내용과 다른 경우에는 상품을 수령한 날부터 8일내 환불 신청가능');

commit;


create sequence test;





-- 내 주문 목록 
select * from ( 
select rownum as rnum, t2.* from(
select t.payment_info_code, t.order_date, t.is_delivered,
op.quantity, p.product_name, p.price,
(select count(payment_info_code) from ordered_product op2 
where op2.payment_info_code = t.payment_info_code) as total_cnt
from (select pi.*,(select min(ordered_product_no) from ordered_product op
where op.payment_info_code = pi.payment_info_code) as ordered_product_no
from payment_info pi) t
join ordered_product op
on t.ordered_product_no = op.ordered_product_no
join product p
on op.product_no = p.product_no
where t.member_no = 4
order by t.order_date desc
)t2 ) where rnum between 1 and 10;

--내 QnA 목록보기
select t2.*
from(select rownum as rnum, t.*, pi.*
from( select * from qna where member_no = 4 order by write_date desc) t
join product_img pi
on t.product_ref_no = pi.product_no
where pi.main_img = 'Y')t2
where t2.rnum between 1 and 5;

-- qna q 달기
insert into qna values(qna_seq.nextval,4,1,null,1,'qna-title'||test.nextval,'qna-content'||test.nextval,sysdate);
-- q 수정하기
update qna set qna_title='byunducktitle', qna_content = 'byunduckcontent' where qna_no = 3 and member_no = 4;
-- q 삭제하기
delete from qna where qna_no = 2 and member_no = 4;
select * from qna;



--내 리뷰 목록보기
select t2.* from( select rownum as rnum, t.* 
from( select * from product_review where member_no = 4 order by write_date desc) t)t2
where t2.rnum between 5 and 10;


select t2.*
from(select rownum as rnum, 
t.review_no,
t.member_no,
t.product_no,
t.write_date,
pi.product_img_no,
pi.filename,
pi.filepath,
pi.main_img
from( select * from product_review where member_no = 4 order by write_date desc) t
join product_img pi
on t.product_no = pi.product_no
where pi.main_img = 'Y')t2
where t2.rnum between 1 and 100;


-- 리뷰 달기
insert into product_review values(review_seq.nextval,4,1,'review-content'||test.nextval,5,sysdate);
-- 리뷰 수정하기
update product_review set review_content = 'byunduckcontent', star = 1 where review_no = 3 and member_no = 4;
-- 리뷰 삭제하기
delete from product_review where review_no = 4 and member_no = 4;
select * from product_review;






--내 문의 목록보기
select t2.* from( select rownum as rnum, t.* 
from( select * from homepage_qna where member_no = 4 order by write_date desc) t)t2
where t2.rnum between 10 and 15;
--문의 달기
insert into homepage_qna values(homepage_qna_seq.nextval,4,null,1,'qna-title'||test.nextval,'qna-content'||test.nextval,sysdate);
-- 문의 수정하기
update homepage_qna set qna_title = 'byunduckcontent' ,qna_content = 'byunduckcontent' where qna_no = 3 and member_no = 4;
-- 문의 삭제하기
delete from homepage_qna where qna_no = 4 and member_no = 4;
select * from homepage_qna;



--정보 수정
update member set member_id= 'byunduckID', member_phone='01099997777' where member_no = 1;
-- 정보 삭제하기
delete from member where member_no = 4 and member_id = 'hoho';
select * from member;

--비밀번호 수정
update member set member_pw='byunduck' where member_no = 1 ;


--내 배송지 목록보기
select t2.* from( select rownum as rnum, t.* 
from( select * from address where member_no = 4 order by addr_no ) t)t2
where t2.rnum between 1 and 5;
-- 배송지 달기
insert into address values(4,address_seq.nextval,'장변덕'||test.nextval,'01077778767','강남구강남구'||test.nextval);
-- 배송지 수정하기
update address set receiver_name= 'byunduckcontent' ,receiver_phone = '01022221111', addr = '곤지암' where addr_no = 7 and member_no = 4;
-- 배송지 삭제하기
delete from address where member_no = 4 and addr_no = 6;
select * from address;

--내 좋아요 목록보기
select t2.* from( select rownum as rnum, t.* 
from( select * from product_like where member_no = 4 order by like_no desc ) t)t2
where t2.rnum between  1 and 5;


select t2.*
from(select rownum as rnum, 
t.like_no,
t.member_no,
t.product_no,
pi.product_img_no,
pi.filename,
pi.filepath,
pi.main_img,
p.product_name,
p.price,
p.category_no
from( select * from product_like where member_no = 4 order by like_no desc) t
join product_img pi
on t.product_no = pi.product_no
join product p
on t.product_no = p.product_no
where pi.main_img = 'Y')t2
where t2.rnum between 1 and 5;

select * from product;


-- 좋아요하기
insert into product_like values(product_like_seq.nextval,4,6);
-- 좋아요 취소하기
delete from product_like where member_no = 4 and product_no = 1;



select * from homepage_qna;


insert into payment_info values(test.nextval,4,'장변덕'||test.currval,'010-1111-1111','주소'||test.currval,sysdate,'N','카카오뱅크');
insert into payment_info values(test.nextval,1,'장변덕'||test.currval,'010-1111-1111','주소'||test.currval,sysdate,'N','카카오뱅크');
insert into ordered_product values(orderd_product_seq.nextval,1,1,5);
insert into ordered_product values(orderd_product_seq.nextval,2,9,5);
insert into product_img values(product_img_seq.nextval,4,'img'||test.nextval,'img'||test.nextval,'Y');
delete from product_img where product_img_no = 9;


update address set receiver_name='byunduck' , receiver_phone='byunduck', addr='byunduck' where member_no = 4 and addr_no = 1 ;
insert into address values(1,address_seq.nextval,'헿','01011113333');

select * from member;
select * from address;
commit;



ALTER TABLE member MODIFY member_phone VARCHAR2(11);
ALTER TABLE address MODIFY receiver_phone VARCHAR2(11);
ALTER TABLE receiver_phone MODIFY receiver_phone VARCHAR2(11);

alter table payment_info rename column is_deliverd to is_delivered;
drop sequence hompage_qna_seq;
create sequence homepage_qna_seq;

ALTER TABLE qna ADD CONSTRAINT qna_level_constraint check(qna_level in (1,2)); --1일반 2 QnA 답변
ALTER TABLE homepage_qna ADD CONSTRAINT homepage_qna_level_constraint check(qna_level in (1,2)); --1일반 2 문의자 답변;

alter table address drop primary key;
alter table address add constraint address_primary_key primary key(addr_no);

alter table product_like drop primary key;
alter table product_like add constraint like_primary_key primary key(member_no,product_no);
alter table product_like add unique(like_no);
--product_img = Y; 하나만
--틀렸는지 안틀렸는지
--서블릿에 mybatis 설정이랑 config 별칭 설정
--homepaegqna memberNo 추가함 제가 push 할때까지 암것도 ㄴㄴ


select * from product_review;
select * from business_seller_info;
update business_seller_info set trade_name = '호떡' where member_no = 4;


select * from address order by addr_no;
