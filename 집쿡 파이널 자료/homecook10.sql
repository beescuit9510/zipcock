--좋아요 목록
select t2.*
from(
select rownum as rnum ,t.*
from(
select 
(select p.product_name from product p where p.product_no = pl.product_no) as productName,
(select p.product_name from product p where p.product_no = pl.product_no) as productPrice,
(select hd.discount_rate from homecook_deal hd where hd.product_no  = pl.product_no and hd.discountend_date >= sysdate ) as drate,
(select pi.filepath from product_img pi where  pi.product_no  = pl.product_no and pi.main_img = 'Y') as filepath
from product_like pl where member_no = 4 order by like_no
)t
)t2 where rnum between 1 and 100;

--		select t2.* from( select 
--			rownum as rnum, 
--			t.member_no as memberNo,
--			t.addr_no as addrNo,
--			t.receiver_name as receiverName,
--			t.receiver_phone as receiverPhone,
--			t.addr as addr
--		from( select * from address where member_no = #{memberNo} order by addr_no ) t)t2
--		where t2.rnum between #{start} and #{end}



--좋아요 목록 w 검색/오더/가격
select r.*
from(
select rownum as rnum, t3.*
from(
select t2.*
from(
select t.productName,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discounted_price,
NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
from(
select 
(select p.product_name from product p where p.product_no = pl.product_no) as productName,
(select p.member_no from product p where p.product_no = pl.product_no) as memberNo,
(select p.price from product p where p.product_no = pl.product_no) as price,
NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = pl.product_no and sysdate >=  hd.discountend_date ),0) as dRate,
(select pi.filepath from product_img pi where  pi.product_no  = pl.product_no and pi.main_img = 'Y') as filepath
from product_like pl where member_no = 4 
)t
)t2
where 
productName like '%'||''||'%'
and tradeName like '%'||''||'%' 
order by order_price asc
)t3
)r where rnum between 1 and 100
;


--좋아요 목록 w 검색/오더/가격
select r.*
from(
select rownum as rnum, t3.*
from(
select t2.*
from(
select t.like_no as likeNo, t.productName, t.filepath,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
t.dRate,
NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
from(
select 
pl.like_no,
(select p.product_name from product p where p.product_no = pl.product_no) as productName,
(select p.member_no from product p where p.product_no = pl.product_no) as memberNo,
(select p.price from product p where p.product_no = pl.product_no) as price,
NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = pl.product_no and sysdate >=  hd.discountend_date ),0) as dRate,
(select pi.filepath from product_img pi where  pi.product_no  = pl.product_no and pi.main_img = 'Y') as filepath
from product_like pl where member_no = 4 
)t
)t2
where 
productName like '%'||''||'%'
and tradeName like '%'||''||'%' 
order by likeNo asc, productName asc 
)t3
)r where rnum between 2 and 100
;











--			rownum as rnum,
--			t.qna_no as qnaNo,
--			t.member_no as memberNo,
--			t.qna_title as qnaTitle,
--			t.qna_content as qnaContent,
--			TRIM(TO_CHAR(t.write_date, 'YY/MM/DD')) as writeDate			
--		from( select * from homepage_qna where member_no = #{memberNo} and qna_level = 1 order by write_date desc) t)t2
--		where t2.rnum between #{start} and #{end}


--qna 목록 w 검색/오더/가격
select 
rnum,
qna_no as qnaNo,
qna_content as qnaContent,
writeDate
from(
select rownum as rnum, t.*
from(
select qna_no, qna_title, qna_content, TO_CHAR(write_date, 'YY/MM/DD') as writeDate
from homepage_qna q
where member_no = 4
and (select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) >= 1
and qna_level = 1
and qna_title like '%'||''||'%'
and qna_content like '%'||''||'%' 
and q.write_date >= add_months(sysdate,-1)
order by qna_no desc
)t
)r where rnum between 1 and 100
;




select * from homepage_qna where qna_level = 2;


















--리뷰
select * 
from(
select rownum as rnum, t.* 
from(
select 
pr.review_no as reviewNo,
pr.member_no as memberNo,
pr.product_no as productNo,
pr.review_content as reviewContent,
pr.star as star,
pr.write_date as writeDate,
(select p.product_name from product p where p.product_no = pr.product_no) as productName,
(select pi.filepath from product_img pi where  pi.product_no  = pr.product_no and pi.main_img = 'Y') as filepath
from product_review pr where member_no = 4 order by review_no desc
)t
)t2 where rnum between 1 and 100;


--		select * 
--		from(
--		select rownum as rnum, t.* 
--		from(
--		select 
--		pr.review_no as reviewNo,
--		pr.member_no as memberNo,
--		pr.product_no as productNo,
--		pr.review_content as reviewContent,
--		pr.star as star,
--		pr.write_date as writeDate,
--		(select p.product_name from product p where p.product_no = pr.product_no) as productName,
--		(select pi.filepath from product_img pi where  pi.product_no  = pr.product_no and pi.main_img = 'Y') as filepath
--		from product_review pr where member_no = #{memberNo} order by review_no desc
--		)t
--		)t2 where rnum between #{start} and #{end}



select r.*
from(
select rownum as rnum, t3.*
from(
select t2.*
from(
select t.review_no as reviewNo, t.review_content as reviewContent, write_date, TO_CHAR(t.write_date, 'YY/MM/DD')as writeDate, t.productName, t.filepath,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
t.dRate,
NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
from(
select pr.review_no, pr.review_content, pr.write_date,
(select p.product_name from product p where p.product_no = pr.product_no) as productName,
(select p.member_no from product p where p.product_no = pr.product_no) as memberNo,
(select p.price from product p where p.product_no = pr.product_no) as price,
NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = pr.product_no and sysdate >=  hd.discountend_date ),0) as dRate,
(select pi.filepath from product_img pi where  pi.product_no  = pr.product_no and pi.main_img = 'Y') as filepath
from product_review pr where member_no = 4 
)t
)t2
where 
productName like '%'||''||'%'
and tradeName like '%'||''||'%' 
and write_date >= add_months(sysdate,-1) --한달이내
--and q.write_date >= add_months(sysdate,-6) 6개월 이내
--and q.write_date >= add_months(sysdate,-12) 1년 이내
--and q.write_date >= sysdate-1 하루전

order by reviewNo asc
)t3
)r where rnum between 1 and 100
;


select * from product_review;








select r.*
from(
select rownum as rnum, t3.*
from(
select t2.*
from(
select t.qna_no as qnaNo, t.qna_title as qnaTitle, t.qna_content as qnaContent, write_date, TO_CHAR(t.write_date, 'YY/MM/DD')as writeDate, t.productName,t.filepath,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
t.dRate,
NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
from(
select q.qna_no, q.qna_title, q.qna_content, q.write_date,
(select p.product_name from product p where p.product_no = q.product_ref_no) as productName,
(select p.member_no from product p where p.product_no = q.product_ref_no) as memberNo,
(select p.price from product p where p.product_no = q.product_ref_no) as price,
NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = q.product_ref_no and sysdate >=  hd.discountend_date ),0) as dRate,
(select pi.filepath from product_img pi where  pi.product_no  = q.product_ref_no and pi.main_img = 'Y') as filepath
from qna q where member_no = 4
)t
)t2
where 
(select count(*) from qna q2 where q2.qna_ref_no = qnaNo and q2.qna_level = 2) >= 0
and productName like '%'||''||'%'
and tradeName like '%'||''||'%' 
and qnaTitle like '%'||''||'%'
and qnaContent like '%'||''||'%' 
)t3
)r where rnum between 1 and 100
;



select * from qna where member_no =4 order by qna_no desc;




















select
rnum,
qna_no as qnaNo,
qna_title as qnaTitle,
qna_content as qnaContent,
writeDate
from(
select rownum as rnum, t.*
from(
select qna_no, qna_title, qna_content, TO_CHAR(write_date, 'YY/MM/DD') as writeDate
from homepage_qna q
where member_no = 4
and (select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) >= 0
and qna_level = 1
)t
)r where rnum between 1 and 100;









select count(t2.reviewNo) as cnt
from(
select t.review_no as reviewNo, t.review_content as reviewContent, write_date, t.productName,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName
from(
select pr.review_no, pr.review_content, pr.write_date,
(select p.product_name from product p where p.product_no = pr.product_no) as productName,
(select p.member_no from product p where p.product_no = pr.product_no) as memberNo
from product_review pr where member_no = 4
)t
)t2 
where
productName like '%'||'호호호'||'%'
and tradeName like '%'||''||'%' ;

select count(pr.review_no) from product_review pr
join product p
on p.product_no = pr.product_no
where pr.member_no = 4
and p.product_name like '%'||'호호호'||'%'
;
select * from product_review where member_no = 4;
commit;
select * from produc
update product set product_name ='호호호test' where product_no = 73;












select count(t2.qnaNo) as cnt
from(
select t.qna_no as qnaNo, t.qna_title as qnaTitle, t.qna_content as qnaContent, write_date, t.productName,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName
from(
select q.qna_no, q.qna_title, q.qna_content, q.write_date,
(select p.product_name from product p where p.product_no = q.product_ref_no) as productName,
(select p.member_no from product p where p.product_no = q.product_ref_no) as memberNo
from qna q where member_no = 4
)t
)t2
where 
(select count(*) from qna q2 where q2.qna_ref_no = qnaNo and q2.qna_level = 2) >= 0
and productName like '%'||''||'%'
;

select count(pr.qna_no) from qna pr
join product p
on p.product_no = pr.product_ref_no
where pr.member_no = 4
and p.product_name like '%'||''||'%'
;


select count(likeNo) as cnt
from(
select t.like_no as likeNo, t.productName, 
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName
from(
select 
pl.like_no,
(select p.product_name from product p where p.product_no = pl.product_no) as productName,
(select p.member_no from product p where p.product_no = pl.product_no) as memberNo
from product_like pl where member_no = 4
)t
)t2
where 
productName like '%'||'2'||'%'
and tradeName like '%'||''||'%' 
;

select count(pr.like_no) from product_like pr
join product p
on p.product_no = pr.product_no
where pr.member_no = 4
and p.product_name like '%'||'2'||'%'
;




select count(t.qna_no) as cnt
from(
select qna_no, qna_title, qna_content
from homepage_qna q
where member_no = 4
and (select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) >= 0
and qna_level = 1
and qna_title like '%'||'T'||'%'
and qna_content like '%'||''||'%' 
)t;


select count(pr.qna_no) from homepage_qna pr
where pr.member_no = 4
and qna_level = 1
and qna_title like '%'||'T'||'%'
;
select * from homepage_qna;









;

select 
r2.product_no as productNo,                        
r2.member_no as memberNo,                          
r2.category_no as categoryNo,                      
r2.img as filepath,                                
r2.product_name as productName,                    
r2.trade_name as tradeName,                        
r2.cnt as reviewCount,                             
r2.star_avg as starAvg,   r2.star_class as starClass,  
r2.d_rate as dRate,                                
r2.price as price,                                 
r2.discounted_price as discountedPrice,   
TRIM(TO_CHAR(r2.order_price, '999,999,999,999,999'))as orderPrice    from   
(     select rownum as rnum, r.*       
from   (        select t2.*       
from   (      select d.product_no, d.member_no, d.product_name, 
d.category_no, d.trade_name, d.img, d.cnt, d.star_avg, 
d.d_rate,   
TRIM(SUBSTR(d.star_avg, 1, 1) || '-' ||SUBSTR(d.star_avg, 3, 3)) as star_class,   
TRIM(TO_CHAR(d.price, '999,999,999,999,999')) as price, 
TRIM(TO_CHAR(NVL(d.price-(d.price*d.d_rate/100), d.price), '999,999,999,999,999')) as discounted_price,    

NVL(d.price-(d.price*d.d_rate/100), d.price) as order_price       from   (      select p.product_no, p.price, p.member_no, p.product_name, 

p.category_no, bsi.trade_name,   (select pi.filepath from product_img pi where pi.main_img = 'Y' and pi.product_no = p.product_no) as img,   
(select count(*) from product_review pr where pr.product_no = p.product_no) as cnt,   TRIM(NVL(TO_CHAR((FLOOR(2 * (select avg(star) from product_review pr 
where pr.product_no = p.product_no)) / 2) , '9.9'), '0.0')) as star_avg,   (select hd.discount_rate from homecook_deal hd 
where hd.product_no = p.product_no and to_char(sysdate, 'YY/MM/DD')   <=   to_char(hd.discountend_date, 'YY/MM/DD')) as d_rate   
from product p   join business_seller_info bsi   on bsi.member_no = p.member_no   )d   )t2    where    NVL(t2.d_rate, -1)   >=        -1           and t2.category_no      
like '%'       and t2.product_name like '%'||''||'%'     and t2.star_avg   >=        0        
and order_price between 0 and 9999999    order by      t2.product_no desc, t2.product_name asc     )r   )r2   where r2.rnum between 1 and 100

;
select * from product_img where main_img = 'Y';

delete from product_img where product_img_no = 10;
commit;

create sequence test112 start with 30;
insert into product_like values(product_like_seq.nextval,4,test112.nextval);
select * from product order by product_no desc ;


select * fr










;



		select count(t2.reviewNo) as cnt
		from(
		select t.review_no as reviewNo, t.review_content as reviewContent, write_date, t.productName,
		(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName
		from(
		select pr.review_no, pr.review_content, pr.write_date,
		(select p.product_name from product p where p.product_no = pr.product_no) as productName,
		(select p.member_no from product p where p.product_no = pr.product_no) as memberNo
		from product_review pr where member_no = 4
		)t
		)t2
		where 
		productName like '%'||''||'%'
		and tradeName like '%'||''||'%' 		
        and write_date >= sysdate ;
        
        
        
;
select count(pr.product_no) from product_review pr
join product p
on p.product_no = pr.product_no
where pr.member_no = 4
and p.product_name like '%테%';















































;
		select r.*
		from(
		select rownum as rnum, t3.*
		from(
		select t2.*
		from(
		select t.qna_no as qnaNo, t.qna_title as qnaTitle, t.qna_content as qnaContent, write_date, TO_CHAR(t.write_date, 'YY/MM/DD')as writeDate, t.productName,t.filepath,
		(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
		TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
		TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
		t.dRate as discountRate,
        isAnswered,
		NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
		from(
		select q.qna_no, q.qna_title, q.qna_content, q.write_date,
		(select p.product_name from product p where p.product_no = q.product_ref_no) as productName,
		(select p.member_no from product p where p.product_no = q.product_ref_no) as memberNo,
		(select p.price from product p where p.product_no = q.product_ref_no) as price,
		NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = q.product_ref_no and sysdate >=  hd.discountend_date ),0) as dRate,
		(select pi.filepath from product_img pi where  pi.product_no  = q.product_ref_no and pi.main_img = 'Y') as filepath,
        (select count(*) from qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) as isAnswered
		from qna q where member_no = 4
		)t
		)t2
		where 
		(select count(*) from qna q2 where q2.qna_ref_no = qnaNo and q2.qna_level = 2) >= 0
		)t3
		)r where rnum between 1 and 100;
				
select * from qna where qna_level = 1 and member_no = 4;



update qna set product_ref_no = 4 where qna_no = 21;
select * from qna where member_no = 48;

commit;



















































select
		r2.product_no as productNo,                     
		r2.member_no as memberNo,                       
		r2.category_no as categoryNo,                   
		r2.img as filepath,                             
		r2.product_name as productName,                 
		r2.trade_name as tradeName,                     
		r2.cnt as reviewCount,                          
		r2.star_avg as starAvg,
		r2.star_class as starClass,
		r2.d_rate as dRate,                             
		r2.price as price,                              
		r2.discounted_price as discountedPrice,
		TRIM(TO_CHAR(r2.order_price, '999,999,999,999,999'))as orderPrice

		from
		( 

		select rownum as rnum, r.* 
		
		from
		(		
		
		select t2.* 
		
		from
		(
		
		select d.product_no, d.member_no, d.product_name, d.category_no, d.trade_name, d.img, d.cnt, d.star_avg, d.d_rate,
		TRIM(SUBSTR(d.star_avg, 1, 1) || '-' ||SUBSTR(d.star_avg, 3, 3)) as star_class,
		TRIM(TO_CHAR(d.price, '999,999,999,999,999')) as price,
		TRIM(TO_CHAR(NVL(d.price-(d.price*d.d_rate/100), d.price), '999,999,999,999,999')) as discounted_price, 
		NVL(d.price-(d.price*d.d_rate/100), d.price) as order_price 
		
		from
		(
		
		select p.product_no, p.price, p.member_no, p.product_name, p.category_no, bsi.trade_name,
		(select pi.filepath from product_img pi where pi.main_img = 'Y' and pi.product_no = p.product_no) as img,
		(select count(*) from product_review pr where pr.product_no = p.product_no) as cnt,
		TRIM(NVL(TO_CHAR((FLOOR(2 * (select avg(star) from product_review pr where pr.product_no = p.product_no)) / 2) , '9.9'), '0.0')) as star_avg,
		(select hd.discount_rate from homecook_deal hd where hd.product_no = p.product_no and to_char(sysdate, 'YY/MM/DD') <= to_char(hd.discountend_date, 'YY/MM/DD')) as d_rate
		from product p
		join business_seller_info bsi
		on bsi.member_no = p.member_no
		)d
		)t2

		order by 
		--	t2.product_no desc, t2.product_name asc 
	 	t2.product_no asc, t2.product_name asc
		)r
		)r2
	



;

select * from homecook_deal;
select * from homecook_deal where discountend_date >= sysdate;


commit;
	select count(t2.qnaNo) as cnt
		from(
		select t.qna_no as qnaNo, t.qna_title as qnaTitle, t.qna_content as qnaContent, write_date, t.productName,
		(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName
		from(
		select q.qna_no, q.qna_title, q.qna_content, q.write_date,
		(select p.product_name from product p where p.product_no = q.product_ref_no) as productName,
		(select p.member_no from product p where p.product_no = q.product_ref_no) as memberNo
		from qna q where member_no = 4 
		)t
		)t2
		where 
		(select count(*) from qna q2 where q2.qna_ref_no = qnaNo and q2.qna_level = 2) >= 0;
	
    
    
;
select * from product_img where main_img = 'Y';
delete from product_img where product_img_no = 21;
commit;























;






		select r.*
		from(
		select rownum as rnum, t3.*
		from(
		select t2.*
		from(
		select t.qna_no as qnaNo, t.qna_title as qnaTitle, t.qna_content as qnaContent, write_date, TO_CHAR(t.write_date, 'YY/MM/DD')as writeDate, t.productName,t.filepath,
		(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
		TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
		TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
		t.dRate as discountRate,
		isAnswered,
		NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
		from(
		select q.qna_no, q.qna_title, q.qna_content, q.write_date,
		(select p.product_name from product p where p.product_no = q.product_ref_no) as productName,
		(select p.member_no from product p where p.product_no = q.product_ref_no) as memberNo,
		(select p.price from product p where p.product_no = q.product_ref_no) as price,
		NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = q.product_ref_no and TO_CHAR(hd.discountend_date, 'YYYYMMDD') >= TO_CHAR(sysdate,'YYYYMMDD') ),0) as dRate,
		(select pi.filepath from product_img pi where  pi.product_no  = q.product_ref_no and pi.main_img = 'Y') as filepath,
		(select count(*) from qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) as isAnswered		
		from qna q where member_no = 4
		)t
		)t2
        where
TO_CHAR(t2.write_date,'YYYYMMDD') >= TO_CHAR(ADD_MONTHS(sysdate,-1), 'YYYYMMDD')
		)t3
)r














;

		select
		rnum,
		qna_no as qnaNo,
		qna_title as qnaTitle,
		qna_content as qnaContent,
		writeDate,
        isAnswered
		from(
		select rownum as rnum, t.*
		from(
		select qna_no, qna_title, qna_content, TO_CHAR(write_date, 'YY/MM/DD') as writeDate,
		(select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) as isAnswered
    	from homepage_qna q
		where member_no = 4
		and NVL((select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2),0) >= 0
		and qna_level = 1
)t)r;









select * from address;








select * from homepage_qna where member_no = 4 and qna_level = 1;







		select
		rnum,
		qna_no as qnaNo,
		qna_title as qnaTitle,
		qna_content as qnaContent,
		writeDate,
        isAnswered
		from(
		select rownum as rnum, t.*
		from(
		select qna_no, qna_title, qna_content, TO_CHAR(write_date, 'YY/MM/DD') as writeDate,
		(select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) as isAnswered
    	from homepage_qna q
		where member_no = 4
		and NVL((select count(*) from homepage_qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2),0) >= 0
		and qna_level = 1
)t)r;


select * from homepage_qna where qna_level = 2 ;
update homepage_qna set qna_level = 1 where member_no = 4;
commit;

select * from homepage_qna;


select 
q.qna_no as qnaNo,
q.qna_ref_no as qnaRefNo,
q.qna_level as qnaLevel,
q.qna_title as qnaTitle,
q.qna_content as qnaContent,
q.write_date as writeDate,
(select m.trade_name from business_seller_info m where q2.member_no = m.member_no) as aWriter,
q2.qna_title as aQnaTitle,
q2.qna_content as aQnaContent,
q2.write_date as aWriteDate
from qna q
left join qna q2
on q2.qna_ref_no = q.qna_no
where q.qna_no = 21;









select 
q.qna_no as qnaNo,
q.qna_ref_no as qnaRefNo,
q.qna_level as qnaLevel,
q.qna_title as qnaTitle,
q.qna_content as qnaContent,
q.write_date as writeDate,
q2.qna_title as aQnaTitle,
q2.qna_content as aQnaContent,
q2.write_date as aWriteDate
from homepage_qna q
left join homepage_qna q2
on q2.qna_ref_no = q.qna_no
where q.qna_no = 21;


select * from homepage_qna where qna_ref_no = 21;



select * from qna where qna_level = 2;

select * from business_seller_info;
select * from qna;

update qna set qna_level = 2 where qna_no = 22;
commit;

select * from homepage_qna;
update homepage_qna set qna_level = 2 ,member_no = 2 where qna_no = 22;
commit;


alter table qna modify(qna_title varchar(180));
alter table homepage_qna modify(qna_title varchar(180));
alter table qna modify(qna_content varchar(2000));
alter table homepage_qna modify(qna_content varchar(2000));



























select r.*
		from(
		select rownum as rnum, t3.*
		from(
		select t2.*
		from(
		select t.qna_no as qnaNo, t.qna_title as qnaTitle, t.qna_content as qnaContent, write_date, TO_CHAR(t.write_date, 'YY/MM/DD')as writeDate, t.productName,t.filepath,
		(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
		TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
		TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
		t.dRate as discountRate,
		isAnswered,
		NVL(t.price-(t.price*t.dRate/100), t.price) as order_price,
		productNo
		from(
		select q.qna_no, q.qna_title, q.qna_content, q.write_date, q.product_ref_no as productNo,
		(select p.product_name from product p where p.product_no = q.product_ref_no) as productName,
		(select p.member_no from product p where p.product_no = q.product_ref_no) as memberNo,
		(select p.price from product p where p.product_no = q.product_ref_no) as price,
		NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = q.product_ref_no and TO_CHAR(hd.discountend_date, 'YYYYMMDD') >= TO_CHAR(sysdate,'YYYYMMDD') ),0) as dRate,
		(select pi.filepath from product_img pi where  pi.product_no  = q.product_ref_no and pi.main_img = 'Y') as filepath,
		(select count(*) from qna q2 where q2.qna_ref_no = q.qna_no and q2.qna_level = 2) as isAnswered		
		from qna q where member_no = 4 
		)t
		)t2
		where 
		NVL((select count(*) from qna q2 where q2.qna_ref_no = qnaNo and q2.qna_level = 2),0) >=  0
        and TO_CHAR(t2.write_date,'YYYYMMDD') >= TO_CHAR(sysdate-1,'YYYYMMDD')
        )t3 )r;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
;
select r.*
from(
select rownum as rnum, t3.*
from(
select t2.*
from(
select t.review_no as reviewNo, t.review_content as reviewContent, write_date, TO_CHAR(t.write_date, 'YY/MM/DD')as writeDate, t.productName, t.filepath,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = t.memberNo) as tradeName,
TRIM(TO_CHAR(t.price,'999,999,999,999,999')) as price,
TRIM(TO_CHAR(NVL(t.price-(t.price*t.dRate/100), t.price), '999,999,999,999,999')) as discountedPrice,
t.dRate as discountRate,
NVL(t.price-(t.price*t.dRate/100), t.price) as order_price 
from(
select pr.review_no, pr.review_content, pr.write_date,
(select p.product_name from product p where p.product_no = pr.product_no) as productName,
(select p.member_no from product p where p.product_no = pr.product_no) as memberNo,
(select p.price from product p where p.product_no = pr.product_no) as price,
NVL((select hd.discount_rate from homecook_deal hd where hd.product_no  = pr.product_no and TO_CHAR(sysdate,'YYYYMMDD') <=  TO_CHAR(hd.discountend_date, 'YYYYMMDD') ),0) as dRate,
(select pi.filepath from product_img pi where  pi.product_no  = pr.product_no and pi.main_img = 'Y') as filepath
from product_review pr where member_no = 4
)t
)t2
)t3
)r
;












select * from ordered_product;
select * from payment_info;















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
CREATE TABLE  ordered_product(
	 ordered_product_no 	number	NOT NULL primary key,
	 product_no 	number	NOT NULL references product(product_no) ON DELETE SET NULL,
	 payment_info_code 	number	NOT NULL references payment_info(payment_info_code) on delete cascade,
	 quantity 	number	NOT NULL
);
CREATE TABLE  product_review  (
	 review_no 	number	NOT NULL primary key,
     member_no 	number	NOT NULL references member(member_no) on delete cascade,
	 product_no 	number	NOT NULL references product(product_no) on delete cascade,
	 review_content 	varchar2(4000)	not null,
	 star 	number	not null constraint star_check check(star between 1 and 5),
	 write_date 	date	NOT NULL
);



select 
p.product_no as productNo,
p.member_no as memberNo,
(select bsi.trade_name from business_seller_info bsi where bsi.member_no = p.member_no) as tradeName,
(select pi.filepath from product_img pi where pi.product_no = p.product_no and main_img = 'Y') as filepath,
p.product_name as productName,
(select hd.discount_rate from homecook_deal hd where hd.product_no = p.product_no and to_char(hd.discountend_date,'YYYYMMDD') >= to_char(sysdate,'YYYYMMDD')) as discountRate,
NVL(p.price-(p.price*(select hd.discount_rate from homecook_deal hd where hd.product_no = p.product_no and to_char(hd.discountend_date,'YYYYMMDD') >= to_char(sysdate,'YYYYMMDD'))/100), p.price) as discountedPrice,
p.price as price,
p.stock as stock,
p.limit as limit,
min(p.stock) as mins,
(select si.shipping_period from shipping_info si where si.product_no = p.product_no) as shippingPeriod,
(select si.shipping_fee from shipping_info si where si.product_no = p.product_no) as shippingFee,
1 as quantity
from product p
where p.product_no in (1,2,3,4);


update homecook_deal set discountend_date = sysdate;
alter table business_seller_info add unique(trade_name);


select * from shipping_info;
alter table business_seller_info add unique(trade_name);


update product set stock = 10 where product_no = 1;
commit;

select * from address;
alter table address add title varchar(100) default '배송지';
commit;
ALTER TABLE address DROP COLUMN title;
create sequence addr_title;

select 
member_no as memberNo,
addr_no as addrNo,
receiver_name as receiverName,
receiver_phone as receiverPhone,
addr as addr,
title as title
from address
where member_no = 4;



select * from;

select t2.* from(
select rownum as rnum, t.* from(
select 
pi.receiver_name as receiverName,
pi.receiver_phone as receiverPhone,
pi.receiver_addr as receiverAddr,
pi.is_delivered as isDelivered,
pi.payment_info_code as paymentInfoCode,
TO_CHAR(pi.order_date, 'YY/MM/DD') as orderDate,
(select count(*) from ordered_product op where op.payment_info_code = pi.payment_info_code ) as total
from payment_info pi where member_no = 4 
and pi.is_delivered like '%'||''||'%'
and TO_CHAR(order_date,'YYYYMMDD') >= TO_CHAR(add_months(sysdate,-12),'YYYYMMDD') 
order by pi.order_date desc
)t
)t2 where rnum between 1 and 100;
select * from payment_info;
select * from ordered_product where payment_info_code = 9;






select t2.* from(
		select rownum as rnum, t.* from(
		select 
		pi.receiver_name as receiverName,
		pi.receiver_phone as receiverPhone,
		pi.receiver_addr as receiverAddr,
		pi.is_delivered as isDelivered,
		pi.payment_info_code as paymentInfoCode,
		TO_CHAR(pi.order_date, 'YY/MM/DD') as orderDate,
		(select count(*) from ordered_product op where op.payment_info_code = pi.payment_info_code ) as total
		from payment_info pi 
		where member_no = 4
				)t
		)t2 where rnum between 1 and 100;




select * from ordered_product;

alter table ordered_product add price number ;
alter table ordered_product add shipping_fee number ;

alter table ordered_product drop column shipping_fee;
select * from ordered_product;


alter table product_review add ordered_product_no number ;
select * from ordered_product ;

where payment_info_code = 8;
commit;

select * from ordered_product op
join product p
on p.product_no = op.product_no
join ordered_product2 op2
on op2.ordered_product2
where payment_info_code = 9;

select * from ordered_product2;

create table ordered_product2(
    ordered_product_no number primary key references ordered_product(ordered_product_no)  not null,
    price number not null,
    shipping_fee number not null
);



select 
review_no as reviewNo,
review_content as reviewContent, 
TO_CHAR(write_date, 'YY/MM/DD') as writeDate,
NVL(TO_CHAR(star,'9.9') ,0) as star_avg,
TRIM(SUBSTR(TO_CHAR(star,'9.9'), 1, 2) || '-' ||SUBSTR(TO_CHAR(star,'9.9') , 4, 4)) as starClass,
p.product_name as productName,
p.price,
(select pi.filepath from product_img pi where pi.product_no = pr.product_no and main_img = 'Y') as filepath,
TRIM(TO_CHAR(p.price-(p.price*(select hd.discount_rate from homecook_deal hd where hd.product_no = pr.product_no )  as discountedPrice
from product_review pr
join product p
on p.product_no = pr.product_no
join homecook_deal hd
on hd.product_no = pr.product_no
;

select * from product_review ;

update product_review set ordered_product_no = 1;
