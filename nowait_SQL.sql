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
    rv_chk1 VARCHAR(10),
    rv_chk2 VARCHAR(10) NOT NULL,
    rv_chk3 VARCHAR(10),
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
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('25', '8번가', '호프', '서울 강동구 천호대로157길 18 원방빌딩 3층',
 'CH_bk_h/bklogo.png', 'CH_bk_h/bk1.png', 'CH_bk_h/bk2.png',
 'CH_bk_h/bkmap.png', 'CH_bk_h/bkmenu.png', 'recommend/bk.png');

INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('26', '단골손님', '호프', '서울 강동구 천호대로157길 31 2층' , 
 'CH_ds_h/dslogo.png', 'CH_ds_h/ds1.png', 'CH_ds_h/ds2.png',
 'CH_ds_h/dsmap.png', 'CH_ds_h/dsmenu.png', 'recommend/ds.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('27', '오랜만이야', '호프', '서울 강동구 올림픽로70길 56-4 2층', 
 'CH_om_h/omlogo.png', 'CH_om_h/om1.png', 'CH_om_h/om2.png',
  'CH_om_h/ommap.png', 'CH_om_h/ommenu.png', 'recommend/om.png');
  
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('28', '몽땅족발', '한식', '서울 강동구 구천면로 24길 20-16', 
 'CH_mdd_k/mddlogo.png', 'CH_mdd_k/mdd1.png', 'CH_mdd_k/mdd2.png',
 'CH_mdd_k/mddmap.png', 'CH_mdd_k/mddmenu.png', 'recommend/mdd.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('29', '디테이블', '양식', '서울 강동구 천호대로 1089 1층', 
 'CH_dt_u/dtlogo.png', 'CH_dt_u/dt1.png', 'CH_dt_u/dt2.png',
'CH_dt_u/dtmap.png', 'CH_dt_u/dtmenu.png', 'recommend/dt.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('30', '경성함바그', '양식', '서울 강동구 천호대로 1005 현대백화점 12층', 
 'CH_ks_u/kslogo.png', 'CH_ks_u/ks1.png', 'CH_ks_u/ks2.png',
 'CH_ks_u/ksmap.png', 'CH_ks_u/ksmenu.png', 'recommend/ks.png');

INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('31', '스타시티서울', '양식', '서울 강동구 구천면로 140 스타시티빌딩 7층', 
 'CH_sts_u/stslogo.png', 'CH_sts_u/sts1.png', 'CH_sts_u/sts2.png',
 'CH_sts_u/stsmap.png', 'CH_sts_u/stsmenu.png', 'recommend/sts.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('32', '안녕식당', '일식', '서울 강동구 천호대로 159길 53', 
 'CH_as_j/stslogo.png', 'CH_as_j/as1.png', 'CH_as_j/as2.png',
 'CH_as_j/stsmap.png', 'CH_as_j/asmenu.png', 'recommend/as.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('33', '스시야미', '일식', '서울 강동구 진황도로 4-9', 
 'CH_sy_j/sylogo.png', 'CH_sy_j/sy1.png', 'CH_sy_j/sy2.png',
 'CH_sy_j/symap.png', 'CH_sy_j/symenu.png', 'recommend/sy.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('34', '도원스타일', '중식', '서울 강동구 1005 현대백화점 천호점 12층 도원스타일', 
 'CH_dw_c/dwlogo.png', 'CH_dw_c/dw1.png', 'CH_dw_c/dw2.png',
 'CH_dw_c/dwmap.png', 'CH_dw_c/dwmenu.png', 'recommend/dw.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('35', '힐링차이나', '중식', '서울 강동구 진황도로 59-2', 
 'CH_hc_c/hclogo.png', 'CH_hc_c/hc1.png', 'CH_hc_c/hc2.png',
 'CH_hc_c/hcmap.png', 'CH_hc_c/hcmenu.png', 'recommend/hc.png');
   
	INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('36', '경성양꼬치', '중식', '서울 강동구 올림픽로 70길 56-2 1층', 
 'CH_ky_c/kylogo.png', 'CH_ky_c/ky1.png', 'CH_ky_c/ky2.png',
 'CH_ky_c/kymap.png', 'CH_ky_c/kymenu.png', 'recommend/ky.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
 VALUES ('37', '미식미객', '중식', '서울 강동구 올림픽로 성안로 167', 
 'CH_mm_c/mmlogo.png', 'CH_mm_c/mm1.png', 'CH_mm_c/mm2.png',
 'CH_mm_c/mmmap.png', 'CH_mm_c/mmmenu.png', 'recommend/mm.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('38', '구도로통닭 서울방이점', '호프', '서울 송파구 오금로11길 41 파크캐슬오피스텔 101호',
 'JS_gt_h/gtlogo.png', 'JS_gt_h/gt1.png', 'JS_gt_h/gt2.png',
 'JS_gt_h/gtmap.png', 'JS_gt_h/gtmenu.png', 'recommend/gt.png');

  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('39', '형재에', '호프', '서울 송파구 올림픽로34길 18 1층',
 'JS_hj_h/hjlogo.png', 'JS_hj_h/gt1.png', 'JS_hj_h/gt2.png',
 'JS_hj_h/hjmap.png', 'JS_hj_h/gtmenu.png', 'recommend/hj.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('40', '청와옥 본점', '한식', '서울 송파구 위례성대로 48 반도빌딩 1층',
 'JS_ck_k/cklogo.png', 'JS_ck_k/ck1.png', 'JS_ck_k/ck2.png',
 'JS_ck_k/ckmap.png', 'JS_ck_k/ckmenu.png', 'recommend/ck.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('41', '달래해장', '한식', '서울 송파구 오금로 11길 30 ',
 'JS_dh_k/dhlogo.png', 'JS_dh_k/dh1.png', 'JS_dh_k/dh2.png',
 'JS_dh_k/dhmap.png', 'JS_dh_k/dhmenu.png', 'recommend/dh.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('42', '개나리아구찜', '한식', '서울 송파구 오금로 15길 7-8',
 'JS_gjj_k/gjjlogo.png', 'JS_gjj_k/gjj1.png', 'JS_gjj_k/gjj2.png',
 'JS_gjj_k/gjjmap.png', 'JS_gjj_k/gjjmenu.png', 'recommend/gjj.png');
 
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('43', '디라이프스타일키친', '양식', '서울 송파구 올림픽로 300 롯데월드몰 5층',
 'JS_dsk_u/dsklogo.png', 'JS_dsk_u/dsk1.png', 'JS_dsk_u/dsk2.png',
 'JS_dsk_u/dskmap.png', 'JS_dsk_u/dskmenu.png', 'recommend/dsk.png');
 
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('44', '고든램지버거', '양식', '서울 송파구 올림픽로 300 롯데월드몰 B1',
 'JS_gd_u/gdlogo.png', 'JS_gd_u/gd1.png', 'JS_gd_u/gd2.png',
 'JS_gd_u/gdmap.png', 'JS_gd_u/gdmenu.png', 'recommend/gd.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('45', '송리단취향', '양식', '서울 송파구 백제고분로 45길 20 1층',
 'JS_sd_u/sdlogo.png', 'JS_sd_u/sd1.png', 'JS_sd_u/sd2.png',
 'JS_sd_u/sdmap.png', 'JS_sd_u/sdmenu.png', 'recommend/sd.png');
 
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('46', '코이라멘', '일식', '서울 송파구 백제고분로 7길 8-12 103호',
 'JS_kr_j/krlogo.png', 'JS_kr_j/kr1.png', 'JS_kr_j/kr2.png',
 'JS_kr_j/krmap.png', 'JS_kr_j/krmenu.png', 'recommend/kr.png');
 
      INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('47', '멘야하나비', '일식', '서울 송파구 백제고분로 45길 38',
 'JS_mh_j/mhlogo.png', 'JS_mh_j/mh1.png', 'JS_mh_j/mh2.png',
 'JS_mh_j/mhmap.png', 'JS_mh_j/mhmenu.png', 'recommend/mh.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('48', '배키욘방', '일식', '서울 송파구 올림픽로 32길 22-23 1층',
 'JS_by_j/bylogo.png', 'JS_by_j/by1.png', 'JS_by_j/by2.png',
 'JS_by_j/bymap.png', 'JS_by_j/bymenu.png', 'recommend/by.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('49', '램플러스', '중식', '서울 송파구 백제고분로 9길 36',
 'JS_lp_c/lplogo.png', 'JS_lp_c/lp1.png', 'JS_lp_c/lp2.png',
 'JS_lp_c/lpmap.png', 'JS_lp_c/lpmenu.png', 'recommend/lp.png');
 
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('50', '심포니오브차이나', '중식', '서울 송파구 올림픽로 212 갤러리아팰리스 지하1-15호',
 'JS_spc_c/spclogo.png', 'JS_spc_c/spc1.png', 'JS_spc_c/spc2.png',
 'JS_spc_c/spcmap.png', 'JS_spc_c/spcmenu.png', 'recommend/spc.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('51', '웨이웨이', '중식', '서울 송파구 올림픽로 10길 13-1',
 'JS_ww_c/wwlogo.png', 'JS_ww_c/ww1.png', 'JS_ww_c/ww2.png',
 'JS_ww_c/wwmap.png', 'JS_ww_c/wwmenu.png', 'recommend/ww.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('52', '금복주류', '호프', '경기 하남시 미사강변중앙로 힐스테이트 미사역 그랑파사쥬 1층 1026호,1027호',
 'MS_gb_h/gblogo.png', 'MS_gb_h/gb1.png', 'MS_gb_h/gb2.png',
 'MS_gb_h/gbmap.png', 'MS_gb_h/gbmenu.png', 'recommend/gb.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('53', '금별맥주', '호프', '경기 하남시 미사강변중앙로 힐스테이트 미사역 그랑파사쥬 11-1BL',
 'MS_gm_h/gmlogo.png', 'MS_gm_h/gm1.png', 'MS_gm_h/gm2.png',
 'MS_gm_h/gmmap.png', 'MS_gm_h/gmmenu.png', 'recommend/gm.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('54', '한신포차', '호프', '경기 하남시 미사강변중앙로 185 1층',
 'MS_hs_h/hslogo.png', 'MS_hs_h/hs1.png', 'MS_hs_h/hs2.png',
 'MS_hs_h/hsmap.png', 'MS_hs_h/hsmenu.png', 'recommend/hs.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('55', '하남돼지집', '한식', '경기 하남시 미사강변북로30번안길 26 1층',
 'MS_hd_k/hdlogo.png', 'MS_hd_k/hd1.png', 'MS_hd_k/hd2.png',
 'MS_hd_k/hdmap.png', 'MS_hd_k/hdmenu.png', 'recommend/hd.png');
   
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('56', '체크플레이트', '양식', '경기 하남시 미사강변한강로290-3 모노라운지상가 A동 101호',
 'MS_cp_u/cplogo.png', 'MS_cp_u/cp1.png', 'MS_cp_u/cp2.png',
 'MS_cp_u/cpmap.png', 'MS_cp_u/cpmenu.png', 'recommend/cp.png');
   
     INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('57', '스톤밸리 바베큐', '양식', '경기 하남시 검단산로186번길 46-3 1층',
 'MS_sb_u/sblogo.png', 'MS_sb_u/sb1.png', 'MS_sb_u/sb2.png',
 'MS_sb_u/sbmap.png', 'MS_sb_u/sbmenu.png', 'recommend/sb.png');
 
    INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('59', '88스테이크', '양식', '경기 하남시 미사강변북로30번안길5 1층',
 'MS_st_u/stlogo.png', 'MS_st_u/st1.png', 'MS_st_u/st2.png',
 'MS_st_u/stmap.png', 'MS_st_u/stmenu.png', 'recommend/st.png');
 
   INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('60', '간자', '일식', '경기 하남시 미사대로 430번 2층',
 'MS_kj_j/kjlogo.png', 'MS_kj_j/kj1.png', 'MS_kj_j/kj2.png',
 'MS_kj_j/kjmap.png', 'MS_kj_j/kjmenu.png', 'recommend/kj.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('61', '김영태스시&사시미마을', '일식', '경기 하남시 미사강변북로 30번길 117-1층',
 'MS_ksm_j/ksmlogo.png', 'MS_ksm_j/ksm1.png', 'MS_ksm_j/ksm2.png',
 'MS_ksm_j/ksmmap.png', 'MS_ksm_j/ksmmenu.png', 'recommend/ksm.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('62', '코와', '일식', '경기 하남시 미사강변중앙로 181 더퍼스트테라스 3층 308호',
 'MS_kw_j/kwlogo.png', 'MS_kw_j/kw1.png', 'MS_kw_j/kw2.png',
 'MS_kw_j/kwmap.png', 'MS_kw_j/kwmenu.png', 'recommend/kw.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('63', '하인선생', '중식', '경기 하남시 미사대로 430 1층 110-115',
 'MS_his_c/hislogo.png', 'MS_his_c/his1.png', 'MS_his_c/his2.png',
 'MS_his_c/hismap.png', 'MS_his_c/hismenu.png', 'recommend/his.png');
 
 INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('64', '정온', '중식', '경기 하남시 신평로 168번길 124',
 'MS_jo_c/jologo.png', 'MS_jo_c/jo1.png', 'MS_jo_c/jo2.png',
 'MS_ho_c/jomap.png', 'MS_jo_c/jomenu.png', 'recommend/jo.png');
 
  INSERT INTO res(res_id, res_name, res_kind, res_addr, res_logo, res_logo1, res_logo2, res_map, res_menu, res_first)
VALUES ('65', '왕비성', '중식', '경기 하남시 검단산로 228번길',
 'MS_ob_c/oblogo.png', 'MS_ob_c/ob1.png', 'MS_ob_c/ob2.png',
 'MS_ob_c/obmap.png', 'MS_ob_c/obmenu.png', 'recommend/ob.png');

select res_logo from res;
