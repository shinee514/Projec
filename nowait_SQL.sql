CREATE TABLE `cust` (
  `cust_id` VARCHAR(30) PRIMARY KEY,
  `cust_pw` VARCHAR(30) NOT NULL,
  `cust_name` VARCHAR(20) UNIQUE KEY,
  `cust_birth` VARCHAR(20) NOT NULL,
  `cust_email` VARCHAR(50) NOT NULL,
  `cust_pn` VARCHAR(20) NOT NULL,
  `cust_oaddr` VARCHAR(20) NOT NULL,
  `cust_addr` VARCHAR(100) NOT NULL,
  `cust_detailaddr` VARCHAR(45) NOT NULL
  )
COLLATE='utf8mb4_general_ci'
;

create table res(
	res_id varchar(20) PRIMARY KEY,
    res_name VARCHAR(20) UNIQUE KEY,
    res_kind VARCHAR(10) NOT NULL,
    res_addr VARCHAR(50) NOT NULL,
    res_logo VARCHAR(50) NOT NULL,
    res_logo1 VARCHAR(50) NOT NULL,
    res_logo2 VARCHAR(50) NOT NULL,
    res_map VARCHAR(50) NOT NULL,
    res_menu VARCHAR(50) NOT NULL,
    res_first VARCHAR(50) NOT NULL
)
COLLATE='utf8mb4_general_ci'
;

create table rv(
	rv_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rv_date VARCHAR(20) NOT NULL,
    rv_time varchar(20) not null,
    rv_cnt VARCHAR(20) not null,
    res_name VARCHAR(20) NOT NULL,
    cust_name VARCHAR(20) NOT NULL,
    FOREIGN KEY (res_name) REFERENCES res (res_name),
    FOREIGN KEY (cust_name) REFERENCES cust (cust_name)
)
COLLATE='utf8mb4_general_ci'
;

select * from cust;
select * from res;
select * from rv;

INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('1', '천호쭈꾸미', '주꾸미요리', '서울 강동구 천호대로158길 14',
 'CH_cj/cjlogo.png', 'CH_cj/cj1.png', 'CH_cj/cj2.png',
 'CH_cj/cjmap.png', 'CH_cj/cjmenu.png', 'recommend/cj.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('2', '대팔이네', '곱창,막창,양', '서울 강동구 구천면로24길 20-9 1층',
 'CH_dp/dplogo.png', 'CH_dp/dp1.png', 'CH_dp/dp2.png',
 'CH_dp/dpmap.png', 'CH_dp/dpmenu.png', 'recommend/dp.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('3', '로니로티 천호점', '이탈리아음식', '서울 강동구 천호대로 1027 동원천호빌딩 2층',
 'CH_ll/lllogo.png', 'CH_ll/ll1.png', 'CH_ll/ll2.png',
 'CH_ll/llmap.png', 'CH_ll/llmenu.png', 'recommend/ll.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('4', '풍국면 천호점', '국수', '서울 강동구 천호대로 1017 지하1층',
 'CH_pk/pklogo.png', 'CH_pk/pk1.png', 'CH_pk/pk2.png',
 'CH_pk/pkmap.png', 'CH_pk/pkmenu.png', 'recommend/pk.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('5', '스시공간', '일식당', '서울 강동구 올림픽로70길 51-2 1층',
 'CH_sg/sglogo.png', 'CH_sg/sg1.png', 'CH_sg/sg2.png',
 'CH_sg/sgmap.png', 'CH_sg/sgmenu.png', 'recommend/sg.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('6', '더식당', '주꾸미요리', '서울 강동구 천호대로157길 24 2층',
 'CH_tsd/tsdlogo.png', 'CH_tsd/tsd1.png', 'CH_tsd/tsd2.png',
 'CH_tsd/tsdmap.png', 'CH_tsd/tsdmenu.png', 'recommend/tsd.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('7', '얌얌카츠', '돈가스', '서울 강동구 천호옛14길 22 1층',
 'CH_yk/yklogo.png', 'CH_yk/yk1.png', 'CH_yk/yk2.png',
 'CH_yk/ykmap.png', 'CH_yk/ykmenu.png', 'recommend/yk.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('8', '연풍민락', '이자카야', '서울 강동구 천호대로157길 18 2층 연풍민락',
 'CH_yp/yplogo.png', 'CH_yp/yp1.png', 'CH_yp/yp2.png',
 'CH_yp/ypmap.png', 'CH_yp/ypmenu.png', 'recommend/yp.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('9', '잠실백정', '육류,고기요리', '서울 송파구 백제고분로7길 28-7 1층',
 'JS_bj/bjlogo.png', 'JS_bj/bj1.png', 'JS_bj/bj2.png',
 'JS_bj/bjmap.png', 'JS_bj/bjmenu.png', 'recommend/bj.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('10', '치즈룸 & 테이스팅룸 롯데월드몰', '이탈리아음식', '서울 송파구 올림픽로 300 롯데월드몰 5F',
 'JS_ct/ctlogo.png', 'JS_ct/ct1.png', 'JS_ct/ct2.png',
 'JS_ct/ctmap.png', 'JS_ct/ctmenu.png', 'recommend/ct.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('11', '동경산책 석촌호수점', '일식당', '서울 송파구 백제고분로45길 15 1층 102호',
 'JS_ds/dslogo.png', 'JS_ds/ds1.png', 'JS_ds/ds2.png',
 'JS_ds/dsmap.png', 'JS_ds/dsmenu.png', 'recommend/ds.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('12', '한남대교', '요리주점', '서울 송파구 올림픽로32길 18-11',
 'JS_hd/hdlogo.png', 'JS_hd/hd1.png', 'JS_hd/hd2.png',
 'JS_hd/hdmap.png', 'JS_hd/hdmenu.png', 'recommend/hd.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('13', '한양중식', '중식당', '서울 송파구 올림픽로 240 제타플렉스',
 'JS_hy/hylogo.png', 'JS_hy/hy1.png', 'JS_hy/hy2.png',
 'JS_hy/hymap.png', 'JS_hy/hymenu.png', 'recommend/hy.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('14', '피자덕후 피자힙 송리단길점', '피자', '서울 송파구 백제고분로45번길 21-9 1, 2층',
 'JS_pd/pdlogo.png', 'JS_pd/pd1.png', 'JS_pd/pd2.png',
 'JS_pd/pdmap.png', 'JS_pd/pdmenu.png', 'recommend/pd.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('15', '세컨디포레스트 송리단길점', '스파게티,파스타전문', '서울 송파구 백제고분로45길 6 1층',
 'JS_sf/sflogo.png', 'JS_sf/sf1.png', 'JS_sf/sf2.png',
 'JS_sf/sfmap.png', 'JS_sf/sfmenu.png', 'recommend/sf.png');
 
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('16', '사시미 신천본점', '생선회', '서울 송파구 백제고분로7길 24',
 'JS_ssm/ssmlogo.png', 'JS_ssm/ssm1.png', 'JS_ssm/ssm2.png',
 'JS_ssm/ssmmap.png', 'JS_ssm/ssmmenu.png', 'recommend/ssm.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('17', '반치앙마이', '태국음식', '경기 하남시 미사강변중앙로 157 리버테라스 1층',
 'MS_bc/bclogo.png', 'MS_bc/bc1.png', 'MS_bc/bc2.png',
 'MS_bc/bcmap.png', 'MS_bc/bcmenu.png', 'recommend/bc.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('18', '고기랑조개당', '조개요리', '경기 하남시 월호로 62 1동 1층 1호',
 'MS_gj/gjlogo.png', 'MS_gj/gj1.png', 'MS_gj/gj2.png',
 'MS_gj/gjmap.png', 'MS_gj/gjmenu.png', 'recommend/gj.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('19', '굽네치킨 미사수변공원점', '치킨,닭강정', '경기 하남시 미사강변중앙로111번길 26 1층',
 'MS_gn/gnlogo.png', 'MS_gn/gn1.png', 'MS_gn/gn2.png',
 'MS_gn/gnmap.png', 'MS_gn/gnmenu.png', 'recommend/gn.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('20', '건강밥상심마니 하남점', '한정식', '경기 하남시 아리수로 570 3층 3018호',
 'MS_gs/gslogo.png', 'MS_gs/gs1.png', 'MS_gs/gs2.png',
 'MS_gs/gsmap.png', 'MS_gs/gsmenu.png', 'recommend/gs.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('21', '찌엔용', '중식당', '경기 하남시 미사강변동로 79 2층 204호',
 'MS_jey/jeylogo.png', 'MS_jey/jey1.png', 'MS_jey/jey2.png',
 'MS_jey/jeymap.png', 'MS_jey/jeymenu.png', 'recommend/jey.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('22', '경양카츠 하남미사점', '돈가스', '경기 하남시 미사강변북로30번안길 27 1층',
 'MS_kk/kklogo.png', 'MS_kk/kk1.png', 'MS_kk/kk2.png',
 'MS_kk/kkmap.png', 'MS_kk/kkmenu.png', 'recommend/kk.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('23', '미뜸 하남미사역점', '한식', '경기 하남시 미사강변중앙로 189 에코브리지2 3층 311호',
 'MS_mt/mtlogo.png', 'MS_mt/mt1.png', 'MS_mt/mt2.png',
 'MS_mt/mtmap.png', 'MS_mt/mtmenu.png', 'recommend/mt.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('24', '페어링하우스', '카페,디저트', '경기 하남시 미사강변중앙로 181 더퍼스트테라스 3층',
 'MS_ph/phlogo.png', 'MS_ph/ph1.png', 'MS_ph/ph2.png',
 'MS_ph/phmap.png', 'MS_ph/phmenu.png', 'recommend/ph.png');

select res_logo from res;
