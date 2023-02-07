CREATE TABLE `cust` (
  `cust_id` VARCHAR(30) PRIMARY KEY,
  `cust_pw` VARCHAR(30) NOT NULL,
  `cust_name` VARCHAR(20) UNIQUE KEY,
  `cust_birth` VARCHAR(20) NOT NULL,
  `cust_email` VARCHAR(50) NOT NULL,
  `cust_pn` VARCHAR(20) UNIQUE KEY,
  `cust_oaddr` VARCHAR(20) NOT NULL,
  `cust_addr` VARCHAR(100) NOT NULL,
  `cust_detailaddr` VARCHAR(45) NOT NULL
  )
COLLATE='utf8mb4_general_ci'
;

create table res(
   res_id INT PRIMARY KEY NOT NULL,
    res_name VARCHAR(20) UNIQUE KEY NOT NULL,
    res_kind VARCHAR(10) NOT NULL,
    res_addr VARCHAR(50) NOT NULL,
    res_logo VARCHAR(50) UNIQUE KEY NOT NULL,
    res_logo1 VARCHAR(50) NOT NULL,
    res_logo2 VARCHAR(50) NOT NULL,
    res_map VARCHAR(50) NOT NULL,
    res_first VARCHAR(50) NOT NULL,
    res_cf VARCHAR(20) NOT NULL,
    res_menu1 VARCHAR(50) NOT NULL,
    res_menu2 VARCHAR(50) NOT NULL,
    res_menu3 VARCHAR(50) NOT NULL,
    res_menu4 VARCHAR(50) NOT NULL,
    res_menu5 VARCHAR(50) NOT NULL,
    res_menu6 VARCHAR(50) NOT NULL
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
    rv_chk1 VARCHAR(10),
    rv_chk2 VARCHAR(10) NOT NULL,
    rv_chk3 VARCHAR(10),
    FOREIGN KEY (res_name) REFERENCES res (res_name) 
    ON DELETE CASCADE,
    FOREIGN KEY (cust_name) REFERENCES cust (cust_name)
    ON DELETE CASCADE
)
COLLATE='utf8mb4_general_ci'
;

create table num(
	num_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    res_name VARCHAR(20) NOT NULL,
    res_logo VARCHAR(50) NOT NULL,
    cust_name VARCHAR(20) NOT NULL,
    cust_pn VARCHAR(20) NOT NULL,
    FOREIGN KEY (res_logo) REFERENCES res (res_logo)
    ON DELETE CASCADE,
    FOREIGN KEY (res_name) REFERENCES res (res_name)
    ON DELETE CASCADE,
    FOREIGN KEY (cust_name) REFERENCES cust (cust_name)
    ON DELETE CASCADE,
    FOREIGN KEY (cust_pn) REFERENCES cust (cust_pn)
    ON DELETE CASCADE
)
COLLATE='utf8mb4_general_ci'
;

select * from cust;
select * from res;
select * from rv;

INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('1', '천호쭈꾸미', '주꾸미요리', '서울 강동구 천호대로158길 14',
 'CH_cj/cjlogo.png', 'CH_cj/cj1.png', 'CH_cj/cj2.png',
 'CH_cj/cjmap.png', 'recommend/cj.png', '인기강동, 한식강동, 추천강동', 'CH_cj/cjmenu1.png', 'CH_cj/cjmenu2.png', 'CH_cj/cjmenu3.png', 'CH_cj/cjmenu4.png'
 , 'CH_cj/cjmenu5.png', 'CH_cj/cjmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('2', '대팔이네', '곱창,막창,양', '서울 강동구 구천면로24길 20-9 1층',
 'CH_dp/dplogo.png', 'CH_dp/dp1.png', 'CH_dp/dp2.png',
 'CH_dp/dpmap.png', 'recommend/dp.png', '한식강동, 세일강동', 'CH_dp/dpmenu1.png', 'CH_dp/dpmenu2.png', 'CH_dp/dpmenu3.png', 'CH_dp/dpmenu4.png'
 , 'CH_dp/dpmenu5.png', 'CH_dp/dpmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('3', '로니로티 천호점', '이탈리아음식', '서울 강동구 천호대로 1027 동원천호빌딩 2층',
 'CH_ll/lllogo.png', 'CH_ll/ll1.png', 'CH_ll/ll2.png',
 'CH_ll/llmap.png', 'recommend/ll.png', '양식강동, 추천강동', 'CH_ll/llmenu1.png', 'CH_ll/llmenu2.png', 'CH_ll/llmenu3.png', 'CH_ll/llmenu4.png'
 , 'CH_ll/llmenu5.png', 'CH_ll/llmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('4', '풍국면 천호점', '국수', '서울 강동구 천호대로 1017 지하1층',
 'CH_pk/pklogo.png', 'CH_pk/pk1.png', 'CH_pk/pk2.png',
 'CH_pk/pkmap.png', 'recommend/pk.png', '한식강동, 세일강동', 'CH_pk/pkmenu1.png', 'CH_pk/pkmenu2.png', 'CH_pk/pkmenu3.png', 'CH_pk/pkmenu4.png'
 , 'CH_pk/pkmenu5.png', 'CH_pk/pkmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('5', '스시공간', '일식당', '서울 강동구 올림픽로70길 51-2 1층',
 'CH_sg/sglogo.png', 'CH_sg/sg1.png', 'CH_sg/sg2.png',
 'CH_sg/sgmap.png', 'recommend/sg.png', '인기강동, 일식강동, 추천강동', 'CH_sg/sgmenu1.png', 'CH_sg/sgmenu2.png', 'CH_sg/sgmenu3.png', 'CH_sg/sgmenu4.png'
 , 'CH_sg/sgmenu5.png', 'CH_sg/sgmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('6', '더식당', '주꾸미요리', '서울 강동구 천호대로157길 24 2층',
 'CH_tsd/tsdlogo.png', 'CH_tsd/tsd1.png', 'CH_tsd/tsd2.png',
 'CH_tsd/tsdmap.png', 'recommend/tsd.png', '줄서기, 세일강동', 'CH_tsd/tsdmenu1.png', 'CH_tsd/tsdmenu2.png', 'CH_tsd/tsdmenu3.png', 'CH_tsd/tsdmenu4.png'
 , 'CH_tsd/tsdmenu5.png', 'CH_tsd/tsdmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('7', '얌얌카츠', '돈가스', '서울 강동구 천호옛14길 22 1층',
 'CH_yk/yklogo.png', 'CH_yk/yk1.png', 'CH_yk/yk2.png',
 'CH_yk/ykmap.png', 'recommend/yk.png', '인기강동, 일식강동, 세일강동', 'CH_yk/ykmenu1.png', 'CH_yk/ykmenu2.png', 'CH_yk/ykmenu3.png', 'CH_yk/ykmenu4.png'
 , 'CH_yk/ykmenu5.png', 'CH_yk/ykmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('8', '연풍민락', '이자카야', '서울 강동구 천호대로157길 18 2층 연풍민락',
 'CH_yp/yplogo.png', 'CH_yp/yp1.png', 'CH_yp/yp2.png',
 'CH_yp/ypmap.png', 'recommend/yp.png', '인기강동, 호프강동, 추천강동', 'CH_yp/ypmenu1.png', 'CH_yp/ypmenu2.png', 'CH_yp/ypmenu3.png', 'CH_yp/ypmenu4.png'
 , 'CH_yp/ypmenu5.png', 'CH_yp/ypmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('9', '잠실백정', '육류,고기요리', '서울 송파구 백제고분로7길 28-7 1층',
 'JS_bj/bjlogo.png', 'JS_bj/bj1.png', 'JS_bj/bj2.png',
 'JS_bj/bjmap.png', 'recommend/bj.png', '인기송파, 한식송파, 세일송파', 'JS_bj/bjmenu1.png', 'JS_bj/bjmenu2.png', 'JS_bj/bjmenu3.png', 'JS_bj/bjmenu4.png'
 , 'JS_bj/bjmenu5.png', 'JS_bj/bjmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('10', '치즈룸 & 테이스팅룸 롯데월드몰', '이탈리아음식', '서울 송파구 올림픽로 300 롯데월드몰 5F',
 'JS_ct/ctlogo.png', 'JS_ct/ct1.png', 'JS_ct/ct2.png',
 'JS_ct/ctmap.png', 'recommend/ct.png', '인기송파, 양식송파, 추천송파', 'JS_ct/ctmenu1.png', 'JS_ct/ctmenu2.png', 'JS_ct/ctmenu3.png', 'JS_ct/ctmenu4.png'
 , 'JS_ct/ctmenu5.png', 'JS_ct/ctmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('11', '동경산책 석촌호수점', '일식당', '서울 송파구 백제고분로45길 15 1층 102호',
 'JS_ds/dslogo.png', 'JS_ds/ds1.png', 'JS_ds/ds2.png',
 'JS_ds/dsmap.png', 'recommend/ds.png', '인기송파, 일식송파, 세일송파', 'JS_ds/dsmenu1.png', 'JS_ds/dsmenu2.png', 'JS_ds/dsmenu3.png', 'JS_ds/dsmenu4.png'
 , 'JS_ds/dsmenu5.png', 'JS_ds/dsmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('12', '한남대교', '요리주점', '서울 송파구 올림픽로32길 18-11',
 'JS_hd/hdlogo.png', 'JS_hd/hd1.png', 'JS_hd/hd2.png',
 'JS_hd/hdmap.png', 'recommend/hd.png', '호프송파, 세일송파', 'JS_hd/hdmenu1.png', 'JS_hd/hdmenu2.png', 'JS_hd/hdmenu3.png', 'JS_hd/hdmenu4.png'
 , 'JS_hd/hdmenu5.png', 'JS_hd/hdmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('13', '한양중식', '중식당', '서울 송파구 올림픽로 240 제타플렉스',
 'JS_hy/hylogo.png', 'JS_hy/hy1.png', 'JS_hy/hy2.png',
 'JS_hy/hymap.png', 'recommend/hy.png', '중식송파, 추천송파', 'JS_hy/hymenu1.png', 'JS_hy/hymenu2.png', 'JS_hy/hymenu3.png', 'JS_hy/hymenu4.png'
 , 'JS_hy/hymenu5.png', 'JS_hy/hymenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('14', '피자덕후 피자힙 송리단길점', '피자', '서울 송파구 백제고분로45번길 21-9 1, 2층',
 'JS_pd/pdlogo.png', 'JS_pd/pd1.png', 'JS_pd/pd2.png',
 'JS_pd/pdmap.png', 'recommend/pd.png', '추천송파', 'JS_pd/pdmenu1.png', 'JS_pd/pdmenu2.png', 'JS_pd/pdmenu3.png', 'JS_pd/pdmenu4.png'
 , 'JS_pd/pdmenu5.png', 'JS_pd/pdmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('15', '세컨디포레스트 송리단길점', '스파게티,파스타전문', '서울 송파구 백제고분로45길 6 1층',
 'JS_sf/sflogo.png', 'JS_sf/sf1.png', 'JS_sf/sf2.png',
 'JS_sf/sfmap.png', 'recommend/sf.png', '인기송파, 세일송파', 'JS_sf/sfmenu1.png', 'JS_sf/sfmenu2.png', 'JS_sf/sfmenu3.png', 'JS_sf/sfmenu4.png'
 , 'JS_sf/sfmenu5.png', 'JS_sf/sfmenu6.png');
 
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('16', '사시미 신천본점', '생선회', '서울 송파구 백제고분로7길 24',
 'JS_ssm/ssmlogo.png', 'JS_ssm/ssm1.png', 'JS_ssm/ssm2.png',
 'JS_ssm/ssmmap.png', 'recommend/ssm.png', '호프송파, 추천송파', 'JS_ssm/ssmmenu1.png', 'JS_ssm/ssmmenu2.png', 'JS_ssm/ssmmenu3.png', 'JS_ssm/ssmmenu4.png'
 , 'JS_ssm/ssmmenu5.png', 'JS_ssm/ssmmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('17', '반치앙마이', '태국음식', '경기 하남시 미사강변중앙로 157 리버테라스 1층',
 'MS_bc/bclogo.png', 'MS_bc/bc1.png', 'MS_bc/bc2.png',
 'MS_bc/bcmap.png', 'recommend/bc.png', '인기하남, 세일하남', 'MS_bc/bcmenu1.png', 'MS_bc/bcmenu2.png', 'MS_bc/bcmenu3.png', 'MS_bc/bcmenu4.png'
 , 'MS_bc/bcmenu5.png', 'MS_bc/bcmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('18', '고기랑조개당', '조개요리', '경기 하남시 월호로 62 1동 1층 1호',
 'MS_gj/gjlogo.png', 'MS_gj/gj1.png', 'MS_gj/gj2.png',
 'MS_gj/gjmap.png', 'recommend/gj.png', '인기하남, 한식하남, 추천하남', 'MS_gj/gjmenu1.png', 'MS_gj/gjmenu2.png', 'MS_gj/gjmenu3.png', 'MS_gj/gjmenu4.png'
 , 'MS_gj/gjmenu5.png', 'MS_gj/gjmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('19', '굽네치킨 미사수변공원점', '치킨,닭강정', '경기 하남시 미사강변중앙로111번길 26 1층',
 'MS_gn/gnlogo.png', 'MS_gn/gn1.png', 'MS_gn/gn2.png',
 'MS_gn/gnmap.png', 'recommend/gn.png', '호프하남, 세일하남', 'MS_gn/gnmenu1.png', 'MS_gn/gnmenu2.png', 'MS_gn/gnmenu3.png', 'MS_gn/gnmenu4.png'
 , 'MS_gn/gnmenu5.png', 'MS_gn/gnmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('20', '건강밥상심마니 하남점', '한정식', '경기 하남시 아리수로 570 3층 3018호',
 'MS_gs/gslogo.png', 'MS_gs/gs1.png', 'MS_gs/gs2.png',
 'MS_gs/gsmap.png', 'recommend/gs.png', '한식하남, 추천하남', 'MS_gs/gsmenu1.png', 'MS_gs/gsmenu2.png', 'MS_gs/gsmenu3.png', 'MS_gs/gsmenu4.png'
 , 'MS_gs/gsmenu5.png', 'MS_gs/gsmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('21', '찌엔용', '중식당', '경기 하남시 미사강변동로 79 2층 204호',
 'MS_jey/jeylogo.png', 'MS_jey/jey1.png', 'MS_jey/jey2.png',
 'MS_jey/jeymap.png', 'recommend/jey.png', '중식하남, 추천하남', 'MS_jey/jeymenu1.png', 'MS_jey/jeymenu2.png', 'MS_jey/jeymenu3.png', 'MS_jey/jeymenu4.png'
 , 'MS_jey/jeymenu5.png', 'MS_jey/jeymenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('22', '경양카츠 하남미사점', '돈가스', '경기 하남시 미사강변북로30번안길 27 1층',
 'MS_kk/kklogo.png', 'MS_kk/kk1.png', 'MS_kk/kk2.png',
 'MS_kk/kkmap.png', 'recommend/kk.png', '인기하남, 일식하남, 세일하남', 'MS_kk/kkmenu1.png', 'MS_kk/kkmenu2.png', 'MS_kk/kkmenu3.png', 'MS_kk/kkmenu4.png'
 , 'MS_kk/kkmenu5.png', 'MS_kk/kkmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('23', '미뜸 하남미사역점', '한식', '경기 하남시 미사강변중앙로 189 에코브리지2 3층 311호',
 'MS_mt/mtlogo.png', 'MS_mt/mt1.png', 'MS_mt/mt2.png',
 'MS_mt/mtmap.png', 'recommend/mt.png', '인기하남, 한식하남, 세일하남', 'MS_mt/mtmenu1.png', 'MS_mt/mtmenu2.png', 'MS_mt/mtmenu3.png', 'MS_mt/mtmenu4.png'
 , 'MS_mt/mtmenu5.png', 'MS_mt/mtmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('24', '페어링하우스', '카페,디저트', '경기 하남시 미사강변중앙로 181 더퍼스트테라스 3층',
 'MS_ph/phlogo.png', 'MS_ph/ph1.png', 'MS_ph/ph2.png',
 'MS_ph/phmap.png', 'recommend/ph.png', '양식하남, 추천하남', 'MS_ph/phmenu1.png', 'MS_ph/phmenu2.png', 'MS_ph/phmenu3.png', 'MS_ph/phmenu4.png'
 , 'MS_ph/phmenu5.png', 'MS_ph/phmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('25', '8번가', '호프', '서울 강동구 천호대로157길 18 원방빌딩 3층',
 'CH_bk_h/bklogo.png', 'CH_bk_h/bk1.png', 'CH_bk_h/bk2.png',
 'CH_bk_h/bkmap.png', 'recommend/bk.png', '호프강동', 'CH_bk_h/bkmenu1.png', 'CH_bk_h/bkmenu2.png', 'CH_bk_h/bkmenu3.png', 'CH_bk_h/bkmenu4.png'
 , 'CH_bk_h/bkmenu5.png', 'CH_bk_h/bkmenu6.png');

INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('26', '단골손님', '호프', '서울 강동구 천호대로157길 31 2층' ,
 'CH_dg_h/dglogo.png', 'CH_dg_h/dg1.png', 'CH_dg_h/dg2.png',
 'CH_dg_h/dgmap.png', 'recommend/dg.png', '호프강동', 'CH_dg_h/dgmenu1.png', 'CH_dg_h/dgmenu2.png', 'CH_dg_h/dgmenu3.png', 'CH_dg_h/dgmenu4.png'
 , 'CH_dg_h/dgmenu5.png', 'CH_dg_h/dgmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('27', '오랜만이야', '호프', '서울 강동구 올림픽로70길 56-4 2층', 
 'CH_om_h/omlogo.png', 'CH_om_h/om1.png', 'CH_om_h/om2.png',
  'CH_om_h/ommap.png', 'recommend/om.png', '호프강동', 'CH_om_h/ommenu1.png', 'CH_om_h/ommenu2.png', 'CH_om_h/ommenu3.png', 'CH_om_h/ommenu4.png'
 , 'CH_om_h/ommenu5.png', 'CH_om_h/ommenu6.png');
  
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('28', '몽땅족발', '한식', '서울 강동구 구천면로 24길 20-16', 
 'CH_mdd_k/mddlogo.png', 'CH_mdd_k/mdd1.png', 'CH_mdd_k/mdd2.png',
 'CH_mdd_k/mddmap.png', 'recommend/mdd.png', '한식강동', 'CH_mdd_k/mddmenu1.png', 'CH_mdd_k/mddmenu2.png', 'CH_mdd_k/mddmenu3.png', 'CH_mdd_k/mddmenu4.png'
 , 'CH_mdd_k/mddmenu5.png', 'CH_mdd_k/mddmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('29', '디테이블', '양식', '서울 강동구 천호대로 1089 1층', 
 'CH_dt_u/dtlogo.png', 'CH_dt_u/dt1.png', 'CH_dt_u/dt2.png',
'CH_dt_u/dtmap.png', 'recommend/dt.png', '양식강동', 'CH_dt_u/dtmenu1.png', 'CH_dt_u/dtmenu2.png', 'CH_dt_u/dtmenu3.png', 'CH_dt_u/dtmenu4.png'
 , 'CH_dt_u/dtmenu5.png', 'CH_dt_u/dtmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('30', '경성함바그', '양식', '서울 강동구 천호대로 1005 현대백화점 12층', 
 'CH_ks_u/kslogo.png', 'CH_ks_u/ks1.png', 'CH_ks_u/ks2.png',
 'CH_ks_u/ksmap.png', 'recommend/ks.png', '양식강동', 'CH_ks_u/ksmenu1.png', 'CH_ks_u/ksmenu2.png', 'CH_ks_u/ksmenu3.png', 'CH_ks_u/ksmenu4.png'
 , 'CH_ks_u/ksmenu5.png', 'CH_ks_u/ksmenu6.png');

INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('31', '스타시티서울', '양식', '서울 강동구 구천면로 140 스타시티빌딩 7층', 
 'CH_sts_u/stslogo.png', 'CH_sts_u/sts1.png', 'CH_sts_u/sts2.png',
 'CH_sts_u/stsmap.png', 'recommend/sts.png', '양식강동', 'CH_sts_u/stsmenu1.png', 'CH_sts_u/stsmenu2.png', 'CH_sts_u/stsmenu3.png', 'CH_sts_u/stsmenu4.png'
 , 'CH_sts_u/stsmenu5.png', 'CH_sts_u/stsmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('32', '안녕식당', '일식', '서울 강동구 천호대로 159길 53', 
 'CH_as_j/aslogo.png', 'CH_as_j/as1.png', 'CH_as_j/as2.png',
 'CH_as_j/asmap.png', 'recommend/as.png', '일식강동', 'CH_as_j/asmenu1.png', 'CH_as_j/asmenu2.png', 'CH_as_j/asmenu3.png', 'CH_as_j/asmenu4.png'
 , 'CH_as_j/asmenu5.png', 'CH_as_j/asmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('33', '스시야미', '일식', '서울 강동구 진황도로 4-9', 
 'CH_sy_j/sylogo.png', 'CH_sy_j/sy1.png', 'CH_sy_j/sy2.png',
 'CH_sy_j/symap.png', 'recommend/sy.png', '일식강동', 'CH_sy_j/symenu1.png', 'CH_sy_j/symenu2.png', 'CH_sy_j/symenu3.png', 'CH_sy_j/symenu4.png'
 , 'CH_sy_j/symenu5.png', 'CH_sy_j/symenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('34', '도원스타일', '중식', '서울 강동구 1005 현대백화점 천호점 12층 도원스타일', 
 'CH_dw_c/dwlogo.png', 'CH_dw_c/dw1.png', 'CH_dw_c/dw2.png',
 'CH_dw_c/dwmap.png', 'recommend/dw.png', '중식강동', 'CH_dw_c/dwmenu1.png', 'CH_dw_c/dwmenu2.png', 'CH_dw_c/dwmenu3.png', 'CH_dw_c/dwmenu4.png'
 , 'CH_dw_c/dwmenu5.png', 'CH_dw_c/dwmenu6.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('35', '힐링차이나', '중식', '서울 강동구 진황도로 59-2', 
 'CH_hc_c/hclogo.png', 'CH_hc_c/hc1.png', 'CH_hc_c/hc2.png',
 'CH_hc_c/hcmap.png', 'recommend/hc.png', '중식강동', 'CH_hc_c/hcmenu1.png', 'CH_hc_c/hcmenu2.png', 'CH_hc_c/hcmenu3.png', 'CH_hc_c/hcmenu4.png'
 , 'CH_hc_c/hcmenu5.png', 'CH_hc_c/hcmenu6.png');
   
	INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('36', '경성양꼬치', '중식', '서울 강동구 올림픽로 70길 56-2 1층', 
 'CH_ky_c/kylogo.png', 'CH_ky_c/ky1.png', 'CH_ky_c/ky2.png',
 'CH_ky_c/kymap.png', 'recommend/ky.png', '중식강동', 'CH_ky_c/kymenu1.png', 'CH_ky_c/kymenu2.png', 'CH_ky_c/kymenu3.png', 'CH_ky_c/kymenu4.png'
 , 'CH_ky_c/kymenu5.png', 'CH_ky_c/kymenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
 VALUES ('37', '미식미객', '중식', '서울 강동구 올림픽로 성안로 167', 
 'CH_mm_c/mmlogo.png', 'CH_mm_c/mm1.png', 'CH_mm_c/mm2.png',
 'CH_mm_c/mmmap.png', 'recommend/mm.png', '중식강동', 'CH_mm_c/mmmenu1.png', 'CH_mm_c/mmmenu2.png', 'CH_mm_c/mmmenu3.png', 'CH_mm_c/mmmenu4.png'
 , 'CH_mm_c/mmmenu5.png', 'CH_mm_c/mmmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('38', '구도로통닭 서울방이점', '호프', '서울 송파구 오금로11길 41 파크캐슬오피스텔 101호',
 'JS_gt_h/gtlogo.png', 'JS_gt_h/gt1.png', 'JS_gt_h/gt2.png',
 'JS_gt_h/gtmap.png', 'recommend/gt.png', '호프송파', 'JS_gt_h/gtmenu1.png', 'JS_gt_h/gtmenu2.png', 'JS_gt_h/gtmenu3.png', 'JS_gt_h/gtmenu4.png'
 , 'JS_gt_h/gtmenu5.png', 'JS_gt_h/gtmenu6.png');

  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('39', '형재에', '호프', '서울 송파구 올림픽로34길 18 1층',
 'JS_hj_h/hjlogo.png', 'JS_hj_h/hj1.png', 'JS_hj_h/hj2.png',
 'JS_hj_h/hjmap.png', 'recommend/hj.png', '호프송파', 'JS_hj_h/hjmenu1.png', 'JS_hj_h/hjmenu2.png', 'JS_hj_h/hjmenu3.png', 'JS_hj_h/hjmenu4.png'
 , 'JS_hj_h/hjmenu5.png', 'JS_hj_h/hjmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('40', '청와옥 본점', '한식', '서울 송파구 위례성대로 48 반도빌딩 1층',
 'JS_ck_k/cklogo.png', 'JS_ck_k/ck1.png', 'JS_ck_k/ck2.png',
 'JS_ck_k/ckmap.png', 'recommend/ck.png', '한식송파', 'JS_ck_k/ckmenu1.png', 'JS_ck_k/ckmenu2.png', 'JS_ck_k/ckmenu3.png', 'JS_ck_k/ckmenu4.png'
 , 'JS_ck_k/ckmenu5.png', 'JS_ck_k/ckmenu6.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('41', '달래해장', '한식', '서울 송파구 오금로 11길 30 ',
 'JS_dh_k/dhlogo.png', 'JS_dh_k/dh1.png', 'JS_dh_k/dh2.png',
 'JS_dh_k/dhmap.png', 'recommend/dh.png', '한식송파', 'JS_dh_k/dhmenu1.png', 'JS_dh_k/dhmenu2.png', 'JS_dh_k/dhmenu3.png', 'JS_dh_k/dhmenu4.png'
 , 'JS_dh_k/dhmenu5.png', 'JS_dh_k/dhmenu6.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('42', '개나리아구찜', '한식', '서울 송파구 오금로 15길 7-8',
 'JS_gjj_k/gjjlogo.png', 'JS_gjj_k/gjj1.png', 'JS_gjj_k/gjj2.png',
 'JS_gjj_k/gjjmap.png', 'recommend/gjj.png', '한식송파', 'JS_gjj_k/gjjmenu1.png', 'JS_gjj_k/gjjmenu2.png', 'JS_gjj_k/gjjmenu3.png', 'JS_gjj_k/gjjmenu4.png'
 , 'JS_gjj_k/gjjmenu5.png', 'JS_gjj_k/gjjmenu6.png');
 
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('43', '디라이프스타일키친', '양식', '서울 송파구 올림픽로 300 롯데월드몰 5층',
 'JS_dsk_u/dsklogo.png', 'JS_dsk_u/dsk1.png', 'JS_dsk_u/dsk2.png',
 'JS_dsk_u/dskmap.png', 'recommend/dsk.png', '양식송파', 'JS_dsk_u/dskmenu1.png', 'JS_dsk_u/dskmenu2.png', 'JS_dsk_u/dskmenu3.png', 'JS_dsk_u/dskmenu4.png'
 , 'JS_dsk_u/dskmenu5.png', 'JS_dsk_u/dskmenu6.png');
 
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('44', '고든램지버거', '양식', '서울 송파구 올림픽로 300 롯데월드몰 B1',
 'JS_gd_u/gdlogo.png', 'JS_gd_u/gd1.png', 'JS_gd_u/gd2.png',
 'JS_gd_u/gdmap.png', 'recommend/gd.png', '양식송파', 'JS_gd_u/gdmenu1.png', 'JS_gd_u/gdmenu2.png', 'JS_gd_u/gdmenu3.png', 'JS_gd_u/gdmenu4.png'
 , 'JS_gd_u/gdmenu5.png', 'JS_gd_u/gdmenu6.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('45', '송리단취향', '양식', '서울 송파구 백제고분로 45길 20 1층',
 'JS_sd_u/sdlogo.png', 'JS_sd_u/sd1.png', 'JS_sd_u/sd2.png',
 'JS_sd_u/sdmap.png', 'recommend/sd.png', '양식송파', 'JS_sd_u/sdmenu1.png', 'JS_sd_u/sdmenu2.png', 'JS_sd_u/sdmenu3.png', 'JS_sd_u/sdmenu4.png'
 , 'JS_sd_u/sdmenu5.png', 'JS_sd_u/sdmenu6.png');
 
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('46', '코이라멘', '일식', '서울 송파구 백제고분로 7길 8-12 103호',
 'JS_kr_j/krlogo.png', 'JS_kr_j/kr1.png', 'JS_kr_j/kr2.png',
 'JS_kr_j/krmap.png', 'recommend/kr.png', '일식송파', 'JS_kr_j/krmenu1.png', 'JS_kr_j/krmenu2.png', 'JS_kr_j/krmenu3.png', 'JS_kr_j/krmenu4.png'
 , 'JS_kr_j/krmenu5.png', 'JS_kr_j/krmenu6.png');
 
      INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('47', '멘야하나비', '일식', '서울 송파구 백제고분로 45길 38',
 'JS_mh_j/mhlogo.png', 'JS_mh_j/mh1.png', 'JS_mh_j/mh2.png',
 'JS_mh_j/mhmap.png', 'recommend/mh.png', '일식송파', 'JS_mh_j/mhmenu1.png', 'JS_mh_j/mhmenu2.png', 'JS_mh_j/mhmenu3.png', 'JS_mh_j/mhmenu4.png'
 , 'JS_mh_j/mhmenu5.png', 'JS_mh_j/mhmenu6.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('48', '배키욘방', '일식', '서울 송파구 올림픽로 32길 22-23 1층',
 'JS_by_j/bylogo.png', 'JS_by_j/by1.png', 'JS_by_j/by2.png',
 'JS_by_j/bymap.png', 'recommend/by.png', '일식송파', 'JS_by_j/bymenu1.png', 'JS_by_j/bymenu2.png', 'JS_by_j/bymenu3.png', 'JS_by_j/bymenu4.png'
 , 'JS_by_j/bymenu5.png', 'JS_by_j/bymenu6.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('49', '램플러스', '중식', '서울 송파구 백제고분로 9길 36',
 'JS_lp_c/lplogo.png', 'JS_lp_c/lp1.png', 'JS_lp_c/lp2.png',
 'JS_lp_c/lpmap.png', 'recommend/lp.png', '중식송파', 'JS_lp_c/lpmenu1.png', 'JS_lp_c/lpmenu2.png', 'JS_lp_c/lpmenu3.png', 'JS_lp_c/lpmenu4.png'
 , 'JS_lp_c/lpmenu5.png', 'JS_lp_c/lpmenu6.png');
 
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('50', '심포니오브차이나', '중식', '서울 송파구 올림픽로 212 갤러리아팰리스 지하1-15호',
 'JS_spc_c/spclogo.png', 'JS_spc_c/spc1.png', 'JS_spc_c/spc2.png',
 'JS_spc_c/spcmap.png', 'recommend/spc.png', '중식송파', 'JS_spc_c/spcmenu1.png', 'JS_spc_c/spcmenu2.png', 'JS_spc_c/spcmenu3.png', 'JS_spc_c/spcmenu4.png'
 , 'JS_spc_c/spcmenu5.png', 'JS_spc_c/spcmenu6.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('51', '웨이웨이', '중식', '서울 송파구 올림픽로 10길 13-1',
 'JS_ww_c/wwlogo.png', 'JS_ww_c/ww1.png', 'JS_ww_c/ww2.png',
 'JS_ww_c/wwmap.png', 'recommend/ww.png', '중식송파', 'JS_ww_c/wwmenu1.png', 'JS_ww_c/wwmenu2.png', 'JS_ww_c/wwmenu3.png', 'JS_ww_c/wwmenu4.png'
 , 'JS_ww_c/wwmenu5.png', 'JS_ww_c/wwmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('52', '금복주류', '호프', '경기 하남시 미사강변중앙로 힐스테이트 미사역 그랑파사쥬 1층 1026호,1027호',
 'MS_gb_h/gblogo.png', 'MS_gb_h/gb1.png', 'MS_gb_h/gb2.png',
 'MS_gb_h/gbmap.png', 'recommend/gb.png', '호프하남', 'MS_gb_h/gbmenu1.png', 'MS_gb_h/gbmenu2.png', 'MS_gb_h/gbmenu3.png', 'MS_gb_h/gbmenu4.png'
 , 'MS_gb_h/gbmenu5.png', 'MS_gb_h/gbmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('53', '금별맥주', '호프', '경기 하남시 미사강변중앙로 힐스테이트 미사역 그랑파사쥬 11-1BL',
 'MS_gm_h/gmlogo.png', 'MS_gm_h/gm1.png', 'MS_gm_h/gm2.png',
 'MS_gm_h/gmmap.png', 'recommend/gm.png', '호프하남', 'MS_gm_h/gmmenu1.png', 'MS_gm_h/gmmenu2.png', 'MS_gm_h/gmmenu3.png', 'MS_gm_h/gmmenu4.png'
 , 'MS_gm_h/gmmenu5.png', 'MS_gm_h/gmmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('54', '한신포차', '호프', '경기 하남시 미사강변중앙로 185 1층',
 'MS_hs_h/hslogo.png', 'MS_hs_h/hs1.png', 'MS_hs_h/hs2.png',
 'MS_hs_h/hsmap.png', 'recommend/hs.png', '호프하남', 'MS_hs_h/hsmenu1.png', 'MS_hs_h/hsmenu2.png', 'MS_hs_h/hsmenu3.png', 'MS_hs_h/hsmenu4.png'
 , 'MS_hs_h/hsmenu5.png', 'MS_hs_h/hsmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('55', '하남돼지집', '한식', '경기 하남시 미사강변북로30번안길 26 1층',
 'MS_hn_k/hnlogo.png', 'MS_hn_k/hn1.png', 'MS_hn_k/hn2.png',
 'MS_hn_k/hnmap.png', 'recommend/hn.png', '한식하남', 'MS_hn_k/hnmenu1.png', 'MS_hn_k/hnmenu2.png', 'MS_hn_k/hnmenu3.png', 'MS_hn_k/hnmenu4.png'
 , 'MS_hn_k/hnmenu5.png', 'MS_hn_k/hnmenu6.png');
   
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('56', '체크플레이트', '양식', '경기 하남시 미사강변한강로290-3 모노라운지상가 A동 101호',
 'MS_cp_u/cplogo.png', 'MS_cp_u/cp1.png', 'MS_cp_u/cp2.png',
 'MS_cp_u/cpmap.png', 'recommend/cp.png', '양식하남', 'MS_cp_u/cpmenu1.png', 'MS_cp_u/cpmenu2.png', 'MS_cp_u/cpmenu3.png', 'MS_cp_u/cpmenu4.png'
 , 'MS_cp_u/cpmenu5.png', 'MS_cp_u/cpmenu6.png');
   
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('57', '스톤밸리 바베큐', '양식', '경기 하남시 검단산로186번길 46-3 1층',
 'MS_sb_u/sblogo.png', 'MS_sb_u/sb1.png', 'MS_sb_u/sb2.png',
 'MS_sb_u/sbmap.png', 'recommend/sb.png', '양식하남', 'MS_sb_u/sbmenu1.png', 'MS_sb_u/sbmenu2.png', 'MS_sb_u/sbmenu3.png', 'MS_sb_u/sbmenu4.png'
 , 'MS_sb_u/sbmenu5.png', 'MS_sb_u/sbmenu6.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('58', '88스테이크', '양식', '경기 하남시 미사강변북로30번안길5 1층',
 'MS_st_u/stlogo.png', 'MS_st_u/st1.png', 'MS_st_u/st2.png',
 'MS_st_u/stmap.png', 'recommend/st.png', '양식하남', 'MS_st_u/stmenu1.png', 'MS_st_u/stmenu2.png', 'MS_st_u/stmenu3.png', 'MS_st_u/stmenu4.png'
 , 'MS_st_u/stmenu5.png', 'MS_st_u/stmenu6.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('59', '간자', '일식', '경기 하남시 미사대로 430번 2층',
 'MS_kj_j/kjlogo.png', 'MS_kj_j/kj1.png', 'MS_kj_j/kj2.png',
 'MS_kj_j/kjmap.png', 'recommend/kj.png', '일식하남', 'MS_kj_j/kjmenu1.png', 'MS_kj_j/kjmenu2.png', 'MS_kj_j/kjmenu3.png', 'MS_kj_j/kjmenu4.png'
 , 'MS_kj_j/kjmenu5.png', 'MS_kj_j/kjmenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('60', '김영태스시&사시미마을', '일식', '경기 하남시 미사강변북로 30번길 117-1층',
 'MS_ksm_j/ksmlogo.png', 'MS_ksm_j/ksm1.png', 'MS_ksm_j/ksm2.png',
 'MS_ksm_j/ksmmap.png', 'recommend/ksm.png', '일식하남', 'MS_ksm_j/ksmmenu1.png', 'MS_ksm_j/ksmmenu2.png', 'MS_ksm_j/ksmmenu3.png', 'MS_ksm_j/ksmmenu4.png'
 , 'MS_ksm_j/ksmmenu5.png', 'MS_ksm_j/ksmmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('61', '코와', '일식', '경기 하남시 미사강변중앙로 181 더퍼스트테라스 3층 308호',
 'MS_kw_j/kwlogo.png', 'MS_kw_j/kw1.png', 'MS_kw_j/kw2.png',
 'MS_kw_j/kwmap.png', 'recommend/kw.png', '일식하남', 'MS_kw_j/kwmenu1.png', 'MS_kw_j/kwmenu2.png', 'MS_kw_j/kwmenu3.png', 'MS_kw_j/kwmenu4.png'
 , 'MS_kw_j/kwmenu5.png', 'MS_kw_j/kwmenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('62', '하인선생', '중식', '경기 하남시 미사대로 430 1층 110-115',
 'MS_his_c/hislogo.png', 'MS_his_c/his1.png', 'MS_his_c/his2.png',
 'MS_his_c/hismap.png', 'recommend/his.png', '중식하남', 'MS_his_c/hismenu1.png', 'MS_his_c/hismenu2.png', 'MS_his_c/hismenu3.png', 'MS_his_c/hismenu4.png'
 , 'MS_his_c/hismenu5.png', 'MS_his_c/hismenu6.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('63', '정온', '중식', '경기 하남시 신평로 168번길 124',
 'MS_jo_c/jologo.png', 'MS_jo_c/jo1.png', 'MS_jo_c/jo2.png',
 'MS_jo_c/jomap.png', 'recommend/jo.png', '중식하남', 'MS_jo_c/jomenu1.png', 'MS_jo_c/jomenu2.png', 'MS_jo_c/jomenu3.png', 'MS_jo_c/jomenu4.png'
 , 'MS_jo_c/jomenu5.png', 'MS_jo_c/jomenu6.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_first, res_cf,
 res_menu1, res_menu2, res_menu3, res_menu4, res_menu5, res_menu6)
VALUES ('64', '왕비성', '중식', '경기 하남시 검단산로 228번길',
 'MS_ob_c/oblogo.png', 'MS_ob_c/ob1.png', 'MS_ob_c/ob2.png',
 'MS_ob_c/obmap.png', 'recommend/ob.png', '중식하남', 'MS_ob_c/obmenu1.png', 'MS_ob_c/obmenu2.png', 'MS_ob_c/obmenu3.png', 'MS_ob_c/obmenu4.png'
 , 'MS_ob_c/obmenu5.png', 'MS_ob_c/obmenu6.png');

select res_logo from res;
