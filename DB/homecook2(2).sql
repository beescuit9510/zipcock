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

