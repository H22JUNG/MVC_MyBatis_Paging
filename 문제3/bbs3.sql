drop database if exists bbs3;
create database bbs3;
use bbs3;

CREATE TABLE `bbs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category` varchar(50) DEFAULT NULL COMMENT '카테고리',
  `title` varchar(255) DEFAULT NULL COMMENT '타이틀',
  `owner` varchar(50) DEFAULT NULL COMMENT '글쓴이',
  `content` longtext DEFAULT NULL COMMENT '내용',
  `create_date` datetime DEFAULT current_timestamp() COMMENT '생성일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='게시판테이블';

insert into bbs3.bbs (id, category, title, owner, content, create_date)
values  (1, '고민', '제목입니다1', '김석호', '이것은 본문 내용입니다1', '2022-04-19 17:24:33.0'),
        (2, '공유', '제목입니다2', '노종현', '이것은 본문 내용입니다2', '2022-06-06 16:34:40.0'),
        (3, '공지', '제목입니다3', '설영우', '이것은 본문 내용입니다3', '2022-05-23 01:38:00.0'),
        (4, '잡담', '제목입니다4', '윤창식', '이것은 본문 내용입니다4', '2022-11-08 21:55:57.0'),
        (5, '잡담', '제목입니다5', '정희은', '이것은 본문 내용입니다5', '2022-02-14 00:48:00.0'),
        (6, '공지', '제목입니다6', '오보경', '이것은 본문 내용입니다6', '2022-07-29 21:34:36.0'),
        (7, '공유', '제목입니다7', '제갈시우', '이것은 본문 내용입니다7', '2022-07-16 11:57:25.0'),
        (8, '공유', '제목입니다8', '박선옥', '이것은 본문 내용입니다8', '2022-01-07 19:29:00.0'),
        (9, '비밀', '제목입니다9', '고영희', '이것은 본문 내용입니다9', '2022-05-04 10:02:55.0'),
        (10, '비밀', '제목입니다10', '배세연', '이것은 본문 내용입니다10', '2022-04-23 07:17:36.0'),
        (11, '잡담', '제목입니다11', '강성욱', '이것은 본문 내용입니다11', '2022-07-22 04:41:15.0'),
        (12, '알림', '제목입니다12', '예해준', '이것은 본문 내용입니다12', '2022-07-23 02:25:47.0'),
        (13, '공유', '제목입니다13', '송해영', '이것은 본문 내용입니다13', '2022-04-17 03:33:05.0'),
        (14, '공유', '제목입니다14', '김준호', '이것은 본문 내용입니다14', '2022-06-04 07:19:51.0'),
        (15, '비밀', '제목입니다15', '사공민아', '이것은 본문 내용입니다15', '2022-01-27 13:07:01.0'),
        (16, '공유', '제목입니다16', '오만석', '이것은 본문 내용입니다16', '2022-02-17 04:25:45.0'),
        (17, '고민', '제목입니다17', '고광호', '이것은 본문 내용입니다17', '2022-01-27 19:17:47.0'),
        (18, '알림', '제목입니다18', '조수진', '이것은 본문 내용입니다18', '2022-05-17 23:06:52.0'),
        (19, '고민', '제목입니다19', '노수혜', '이것은 본문 내용입니다19', '2022-01-13 07:13:10.0'),
        (20, '공지', '제목입니다20', '임광준', '이것은 본문 내용입니다20', '2022-10-12 10:18:40.0'),
        (21, '공지', '좋은 하루입니다1', '김석호', '이것은 본문 내용입니다21', '2022-03-26 02:34:28.0'),
        (22, '공지', '좋은 하루입니다2', '노종현', '이것은 본문 내용입니다22', '2022-08-11 12:15:48.0'),
        (23, '공유', '좋은 하루입니다3', '설영우', '이것은 본문 내용입니다23', '2022-07-22 04:30:38.0'),
        (24, '알림', '좋은 하루입니다4', '윤창식', '이것은 본문 내용입니다24', '2022-05-01 23:39:07.0'),
        (25, '공유', '좋은 하루입니다5', '정희은', '이것은 본문 내용입니다25', '2022-12-14 19:52:32.0'),
        (26, '알림', '좋은 하루입니다6', '오보경', '이것은 본문 내용입니다26', '2022-05-24 19:34:10.0'),
        (27, '고민', '좋은 하루입니다7', '제갈시우', '이것은 본문 내용입니다27', '2022-05-23 02:16:29.0'),
        (28, '잡담', '좋은 하루입니다8', '박선옥', '이것은 본문 내용입니다28', '2022-06-24 02:09:31.0'),
        (29, '공지', '좋은 하루입니다9', '고영희', '이것은 본문 내용입니다29', '2022-05-27 09:39:43.0'),
        (30, '공유', '좋은 하루입니다10', '배세연', '이것은 본문 내용입니다30', '2022-10-18 01:04:26.0'),
        (31, '고민', '좋은 하루입니다11', '강성욱', '이것은 본문 내용입니다31', '2022-05-18 08:02:23.0'),
        (32, '공지', '좋은 하루입니다12', '예해준', '이것은 본문 내용입니다32', '2022-03-20 13:17:47.0'),
        (33, '고민', '좋은 하루입니다13', '송해영', '이것은 본문 내용입니다33', '2022-02-07 08:54:23.0'),
        (34, '잡담', '좋은 하루입니다14', '김준호', '이것은 본문 내용입니다34', '2022-02-04 06:10:00.0'),
        (35, '비밀', '좋은 하루입니다15', '사공민아', '이것은 본문 내용입니다35', '2022-10-05 07:38:25.0'),
        (36, '공유', '좋은 하루입니다16', '오만석', '이것은 본문 내용입니다36', '2022-02-10 03:08:05.0'),
        (37, '공유', '좋은 하루입니다17', '고광호', '이것은 본문 내용입니다37', '2022-11-19 15:33:12.0'),
        (38, '비밀', '좋은 하루입니다18', '조수진', '이것은 본문 내용입니다38', '2022-02-20 06:24:00.0'),
        (39, '알림', '좋은 하루입니다19', '노수혜', '이것은 본문 내용입니다39', '2022-02-01 10:18:35.0'),
        (40, '공지', '좋은 하루입니다20', '임광준', '이것은 본문 내용입니다40', '2022-06-03 08:18:42.0'),
        (41, '비밀', '오늘도 파이팅1', '김석호', '이것은 본문 내용입니다41', '2022-04-05 11:37:02.0'),
        (42, '공지', '오늘도 파이팅2', '노종현', '이것은 본문 내용입니다42', '2022-12-22 04:27:21.0'),
        (43, '알림', '오늘도 파이팅3', '설영우', '이것은 본문 내용입니다43', '2022-11-25 15:14:29.0'),
        (44, '비밀', '오늘도 파이팅4', '윤창식', '이것은 본문 내용입니다44', '2022-10-15 21:15:15.0'),
        (45, '비밀', '오늘도 파이팅5', '정희은', '이것은 본문 내용입니다45', '2022-03-02 11:19:35.0'),
        (46, '알림', '오늘도 파이팅6', '오보경', '이것은 본문 내용입니다46', '2022-08-06 08:47:31.0'),
        (47, '공지', '오늘도 파이팅7', '제갈시우', '이것은 본문 내용입니다47', '2022-07-26 21:26:24.0'),
        (48, '알림', '오늘도 파이팅8', '박선옥', '이것은 본문 내용입니다48', '2022-07-25 21:23:25.0'),
        (49, '알림', '오늘도 파이팅9', '고영희', '이것은 본문 내용입니다49', '2022-09-01 07:01:01.0'),
        (50, '비밀', '오늘도 파이팅10', '배세연', '이것은 본문 내용입니다50', '2022-07-11 21:59:01.0'),
        (51, '잡담', '오늘도 파이팅11', '강성욱', '이것은 본문 내용입니다51', '2022-03-11 21:26:20.0'),
        (52, '공유', '오늘도 파이팅12', '예해준', '이것은 본문 내용입니다52', '2022-08-20 23:52:47.0'),
        (53, '공지', '오늘도 파이팅13', '송해영', '이것은 본문 내용입니다53', '2022-05-01 18:49:50.0'),
        (54, '고민', '오늘도 파이팅14', '김준호', '이것은 본문 내용입니다54', '2022-01-22 14:13:26.0'),
        (55, '알림', '오늘도 파이팅15', '사공민아', '이것은 본문 내용입니다55', '2022-10-20 06:05:07.0'),
        (56, '고민', '오늘도 파이팅16', '오만석', '이것은 본문 내용입니다56', '2022-07-04 23:49:06.0'),
        (57, '알림', '오늘도 파이팅17', '고광호', '이것은 본문 내용입니다57', '2022-03-10 10:45:36.0'),
        (58, '잡담', '오늘도 파이팅18', '조수진', '이것은 본문 내용입니다58', '2022-04-04 14:36:49.0'),
        (59, '알림', '오늘도 파이팅19', '노수혜', '이것은 본문 내용입니다59', '2022-09-03 12:30:25.0'),
        (60, '비밀', '오늘도 파이팅20', '임광준', '이것은 본문 내용입니다60', '2022-02-02 09:32:36.0'),
        (61, '알림', '잠시 쉬었다가세요1', '김석호', '이것은 본문 내용입니다61', '2022-09-14 23:55:10.0'),
        (62, '공지', '잠시 쉬었다가세요2', '노종현', '이것은 본문 내용입니다62', '2022-07-24 21:54:24.0'),
        (63, '비밀', '잠시 쉬었다가세요3', '설영우', '이것은 본문 내용입니다63', '2022-02-24 13:01:18.0'),
        (64, '공지', '잠시 쉬었다가세요4', '윤창식', '이것은 본문 내용입니다64', '2022-03-21 10:52:09.0'),
        (65, '비밀', '잠시 쉬었다가세요5', '정희은', '이것은 본문 내용입니다65', '2022-06-03 03:33:11.0'),
        (66, '공유', '잠시 쉬었다가세요6', '오보경', '이것은 본문 내용입니다66', '2022-04-26 18:25:29.0'),
        (67, '비밀', '잠시 쉬었다가세요7', '제갈시우', '이것은 본문 내용입니다67', '2022-08-13 12:17:40.0'),
        (68, '잡담', '잠시 쉬었다가세요8', '박선옥', '이것은 본문 내용입니다68', '2022-07-15 19:59:07.0'),
        (69, '고민', '잠시 쉬었다가세요9', '고영희', '이것은 본문 내용입니다69', '2022-07-10 04:10:48.0'),
        (70, '알림', '잠시 쉬었다가세요10', '배세연', '이것은 본문 내용입니다70', '2022-09-23 12:52:53.0'),
        (71, '알림', '잠시 쉬었다가세요11', '강성욱', '이것은 본문 내용입니다71', '2022-08-30 09:52:36.0'),
        (72, '알림', '잠시 쉬었다가세요12', '예해준', '이것은 본문 내용입니다72', '2022-06-30 23:00:16.0'),
        (73, '잡담', '잠시 쉬었다가세요13', '송해영', '이것은 본문 내용입니다73', '2022-10-11 14:57:45.0'),
        (74, '비밀', '잠시 쉬었다가세요14', '김준호', '이것은 본문 내용입니다74', '2022-03-29 03:37:23.0'),
        (75, '공유', '잠시 쉬었다가세요15', '사공민아', '이것은 본문 내용입니다75', '2022-02-08 08:17:16.0'),
        (76, '비밀', '잠시 쉬었다가세요16', '오만석', '이것은 본문 내용입니다76', '2022-03-21 00:03:59.0'),
        (77, '고민', '잠시 쉬었다가세요17', '고광호', '이것은 본문 내용입니다77', '2022-07-29 10:37:26.0'),
        (78, '고민', '잠시 쉬었다가세요18', '조수진', '이것은 본문 내용입니다78', '2022-03-26 14:01:16.0'),
        (79, '고민', '잠시 쉬었다가세요19', '노수혜', '이것은 본문 내용입니다79', '2022-06-22 07:00:25.0'),
        (80, '잡담', '잠시 쉬었다가세요20', '임광준', '이것은 본문 내용입니다80', '2022-08-15 12:48:43.0'),
        (81, '공지', '이쁜 강아지 보고 가세요1', '김석호', '이것은 본문 내용입니다81', '2022-08-02 14:14:20.0'),
        (82, '공유', '이쁜 강아지 보고 가세요2', '노종현', '이것은 본문 내용입니다82', '2022-11-09 03:25:29.0'),
        (83, '공지', '이쁜 강아지 보고 가세요3', '설영우', '이것은 본문 내용입니다83', '2022-12-25 15:02:08.0'),
        (84, '잡담', '이쁜 강아지 보고 가세요4', '윤창식', '이것은 본문 내용입니다84', '2022-08-20 07:56:58.0'),
        (85, '잡담', '이쁜 강아지 보고 가세요5', '정희은', '이것은 본문 내용입니다85', '2022-05-23 00:11:44.0'),
        (86, '알림', '이쁜 강아지 보고 가세요6', '오보경', '이것은 본문 내용입니다86', '2022-03-15 20:35:51.0'),
        (87, '비밀', '이쁜 강아지 보고 가세요7', '제갈시우', '이것은 본문 내용입니다87', '2022-05-10 10:25:08.0'),
        (88, '고민', '이쁜 강아지 보고 가세요8', '박선옥', '이것은 본문 내용입니다88', '2022-06-22 05:01:31.0'),
        (89, '공유', '이쁜 강아지 보고 가세요9', '고영희', '이것은 본문 내용입니다89', '2022-04-05 16:03:00.0'),
        (90, '공지', '이쁜 강아지 보고 가세요10', '배세연', '이것은 본문 내용입니다90', '2022-12-22 20:04:49.0'),
        (91, '공지', '이쁜 고양이 보고 가세요1', '강성욱', '이것은 본문 내용입니다91', '2022-04-12 10:42:38.0'),
        (92, '공유', '이쁜 고양이 보고 가세요2', '예해준', '이것은 본문 내용입니다92', '2022-07-15 05:27:23.0'),
        (93, '고민', '이쁜 고양이 보고 가세요3', '송해영', '이것은 본문 내용입니다93', '2022-11-19 05:50:36.0'),
        (94, '비밀', '이쁜 고양이 보고 가세요4', '김준호', '이것은 본문 내용입니다94', '2022-08-16 02:07:45.0'),
        (95, '공유', '이쁜 고양이 보고 가세요5', '사공민아', '이것은 본문 내용입니다95', '2022-11-11 04:01:20.0'),
        (96, '고민', '이쁜 고양이 보고 가세요6', '오만석', '이것은 본문 내용입니다96', '2022-04-03 18:10:14.0'),
        (97, '비밀', '이쁜 고양이 보고 가세요7', '고광호', '이것은 본문 내용입니다97', '2022-08-23 20:09:10.0'),
        (98, '잡담', '이쁜 고양이 보고 가세요8', '조수진', '이것은 본문 내용입니다98', '2022-08-04 23:03:26.0'),
        (99, '비밀', '이쁜 고양이 보고 가세요9', '노수혜', '이것은 본문 내용입니다99', '2022-10-12 15:10:55.0'),
        (100, '알림', '이쁜 고양이 보고 가세요10', '임광준', '이것은 본문 내용입니다100', '2022-05-24 08:26:41.0'),
        (101, '잡담', '경치가 너무 좋네요1', '김석호', '이것은 본문 내용입니다101', '2022-10-09 00:12:12.0'),
        (102, '잡담', '경치가 너무 좋네요2', '노종현', '이것은 본문 내용입니다102', '2022-09-05 00:57:14.0'),
        (103, '알림', '경치가 너무 좋네요3', '설영우', '이것은 본문 내용입니다103', '2022-05-08 01:03:17.0'),
        (104, '비밀', '경치가 너무 좋네요4', '윤창식', '이것은 본문 내용입니다104', '2022-06-04 21:58:45.0'),
        (105, '고민', '경치가 너무 좋네요5', '정희은', '이것은 본문 내용입니다105', '2022-05-20 01:46:34.0'),
        (106, '공지', '경치가 너무 좋네요6', '오보경', '이것은 본문 내용입니다106', '2022-03-01 22:43:02.0'),
        (107, '공지', '경치가 너무 좋네요7', '제갈시우', '이것은 본문 내용입니다107', '2022-05-12 05:08:47.0'),
        (108, '잡담', '경치가 너무 좋네요8', '박선옥', '이것은 본문 내용입니다108', '2022-08-26 07:10:48.0'),
        (109, '알림', '경치가 너무 좋네요9', '고영희', '이것은 본문 내용입니다109', '2022-09-27 13:59:38.0'),
        (110, '잡담', '경치가 너무 좋네요10', '배세연', '이것은 본문 내용입니다110', '2022-02-24 07:54:59.0'),
        (111, '알림', '차 한잔 어때요?1', '강성욱', '이것은 본문 내용입니다111', '2022-03-26 17:12:30.0'),
        (112, '고민', '차 한잔 어때요?2', '예해준', '이것은 본문 내용입니다112', '2022-11-24 12:52:49.0'),
        (113, '공지', '차 한잔 어때요?3', '송해영', '이것은 본문 내용입니다113', '2022-07-04 07:50:05.0'),
        (114, '비밀', '차 한잔 어때요?4', '김준호', '이것은 본문 내용입니다114', '2022-11-23 23:05:22.0'),
        (115, '비밀', '차 한잔 어때요?5', '사공민아', '이것은 본문 내용입니다115', '2022-10-02 16:45:58.0'),
        (116, '잡담', '차 한잔 어때요?6', '오만석', '이것은 본문 내용입니다116', '2022-08-02 13:06:50.0'),
        (117, '공유', '차 한잔 어때요?7', '고광호', '이것은 본문 내용입니다117', '2022-11-02 00:38:49.0'),
        (118, '고민', '차 한잔 어때요?8', '조수진', '이것은 본문 내용입니다118', '2022-01-15 12:39:29.0'),
        (119, '공유', '차 한잔 어때요?9', '노수혜', '이것은 본문 내용입니다119', '2022-07-07 15:38:26.0'),
        (120, '알림', '차 한잔 어때요?10', '임광준', '이것은 본문 내용입니다120', '2022-03-25 22:38:28.0'),
        (121, '공유', '산책한 길에 찍은 사진1', '김석호', '이것은 본문 내용입니다121', '2022-09-04 12:52:00.0'),
        (122, '공지', '산책한 길에 찍은 사진2', '노종현', '이것은 본문 내용입니다122', '2022-05-26 11:58:46.0'),
        (123, '알림', '산책한 길에 찍은 사진3', '설영우', '이것은 본문 내용입니다123', '2022-01-16 12:12:37.0'),
        (124, '잡담', '산책한 길에 찍은 사진4', '윤창식', '이것은 본문 내용입니다124', '2022-05-24 09:05:36.0'),
        (125, '잡담', '산책한 길에 찍은 사진5', '정희은', '이것은 본문 내용입니다125', '2022-11-03 13:34:08.0'),
        (126, '고민', '산책한 길에 찍은 사진6', '오보경', '이것은 본문 내용입니다126', '2022-10-07 13:04:31.0'),
        (127, '고민', '산책한 길에 찍은 사진7', '제갈시우', '이것은 본문 내용입니다127', '2022-04-01 19:43:15.0'),
        (128, '잡담', '산책한 길에 찍은 사진8', '박선옥', '이것은 본문 내용입니다128', '2022-09-16 15:04:06.0'),
        (129, '고민', '산책한 길에 찍은 사진9', '고영희', '이것은 본문 내용입니다129', '2022-06-19 15:50:48.0'),
        (130, '잡담', '산책한 길에 찍은 사진10', '배세연', '이것은 본문 내용입니다130', '2022-01-18 21:19:08.0'),
        (131, '공유', '무더위를 날릴 방법1', '강성욱', '이것은 본문 내용입니다131', '2022-08-17 08:38:41.0'),
        (132, '고민', '무더위를 날릴 방법2', '예해준', '이것은 본문 내용입니다132', '2022-07-18 11:17:30.0'),
        (133, '고민', '무더위를 날릴 방법3', '송해영', '이것은 본문 내용입니다133', '2022-07-14 10:45:42.0'),
        (134, '공유', '무더위를 날릴 방법4', '김준호', '이것은 본문 내용입니다134', '2022-11-03 01:32:10.0'),
        (135, '고민', '무더위를 날릴 방법5', '사공민아', '이것은 본문 내용입니다135', '2022-03-16 15:20:26.0'),
        (136, '공지', '무더위를 날릴 방법6', '오만석', '이것은 본문 내용입니다136', '2022-04-11 06:25:26.0'),
        (137, '공지', '무더위를 날릴 방법7', '고광호', '이것은 본문 내용입니다137', '2022-08-13 01:26:45.0'),
        (138, '알림', '무더위를 날릴 방법8', '조수진', '이것은 본문 내용입니다138', '2022-05-02 13:13:58.0'),
        (139, '잡담', '무더위를 날릴 방법9', '노수혜', '이것은 본문 내용입니다139', '2022-02-12 09:02:48.0'),
        (140, '잡담', '무더위를 날릴 방법10', '임광준', '이것은 본문 내용입니다140', '2022-07-09 00:56:26.0'),
        (141, '비밀', '이거 어디서 파나요?1', '김석호', '이것은 본문 내용입니다141', '2022-01-07 14:30:33.0'),
        (142, '비밀', '이거 어디서 파나요?2', '노종현', '이것은 본문 내용입니다142', '2022-11-08 17:05:27.0'),
        (143, '공유', '이거 어디서 파나요?3', '설영우', '이것은 본문 내용입니다143', '2022-05-02 00:19:27.0'),
        (144, '공유', '이거 어디서 파나요?4', '윤창식', '이것은 본문 내용입니다144', '2022-10-08 09:46:56.0'),
        (145, '잡담', '이거 어디서 파나요?5', '정희은', '이것은 본문 내용입니다145', '2022-09-03 18:37:16.0'),
        (146, '공지', '이거 어디서 파나요?6', '오보경', '이것은 본문 내용입니다146', '2022-07-20 05:04:27.0'),
        (147, '고민', '즐거운 연휴 되세요!1', '김석호', '이것은 본문 내용입니다147', '2022-11-14 06:22:00.0'),
        (148, '공유', '즐거운 연휴 되세요!2', '노종현', '이것은 본문 내용입니다148', '2022-06-23 23:21:59.0'),
        (149, '공지', '즐거운 연휴 되세요!3', '설영우', '이것은 본문 내용입니다149', '2022-10-16 11:47:38.0'),
        (150, '잡담', '즐거운 연휴 되세요!4', '윤창식', '이것은 본문 내용입니다150', '2022-03-30 14:49:59.0'),
        (151, '잡담', '즐거운 연휴 되세요!5', '정희은', '이것은 본문 내용입니다151', '2022-05-30 23:33:41.0'),
        (152, '공지', '즐거운 연휴 되세요!6', '오보경', '이것은 본문 내용입니다152', '2022-05-26 20:30:34.0'),
        (153, '공유', '즐거운 연휴 되세요!7', '제갈시우', '이것은 본문 내용입니다153', '2022-08-15 04:44:56.0'),
        (154, '공유', '즐거운 연휴 되세요!8', '박선옥', '이것은 본문 내용입니다154', '2022-04-13 10:57:56.0'),
        (155, '비밀', '즐거운 연휴 되세요!9', '고영희', '이것은 본문 내용입니다155', '2022-05-10 03:53:38.0'),
        (156, '비밀', '즐거운 연휴 되세요!10', '배세연', '이것은 본문 내용입니다156', '2022-03-10 10:49:30.0'),
        (157, '잡담', '즐거운 연휴 되세요!11', '강성욱', '이것은 본문 내용입니다157', '2022-12-25 07:43:53.0'),
        (158, '알림', '즐거운 연휴 되세요!12', '예해준', '이것은 본문 내용입니다158', '2022-02-01 05:35:21.0'),
        (159, '공유', '즐거운 연휴 되세요!13', '송해영', '이것은 본문 내용입니다159', '2022-12-12 07:50:03.0'),
        (160, '공유', '즐거운 연휴 되세요!14', '김준호', '이것은 본문 내용입니다160', '2022-09-17 23:47:14.0'),
        (161, '비밀', '즐거운 연휴 되세요!15', '사공민아', '이것은 본문 내용입니다161', '2022-06-30 16:39:21.0'),
        (162, '공유', '즐거운 연휴 되세요!16', '오만석', '이것은 본문 내용입니다162', '2022-03-04 20:07:50.0'),
        (163, '고민', '즐거운 연휴 되세요!17', '고광호', '이것은 본문 내용입니다163', '2022-05-29 18:32:38.0'),
        (164, '알림', '즐거운 연휴 되세요!18', '조수진', '이것은 본문 내용입니다164', '2022-03-25 14:36:21.0'),
        (165, '고민', '즐거운 연휴 되세요!19', '노수혜', '이것은 본문 내용입니다165', '2022-12-25 20:38:12.0'),
        (166, '공지', '즐거운 연휴 되세요!20', '임광준', '이것은 본문 내용입니다166', '2022-03-03 12:33:42.0'),
        (167, '공지', '여기 컴퓨터 잘 다루시는 분 계세요?1', '김석호', '이것은 본문 내용입니다167', '2022-07-25 01:52:58.0'),
        (168, '공지', '여기 컴퓨터 잘 다루시는 분 계세요?2', '노종현', '이것은 본문 내용입니다168', '2022-05-24 00:12:11.0'),
        (169, '공유', '여기 컴퓨터 잘 다루시는 분 계세요?3', '설영우', '이것은 본문 내용입니다169', '2022-11-15 07:35:41.0'),
        (170, '알림', '여기 컴퓨터 잘 다루시는 분 계세요?4', '윤창식', '이것은 본문 내용입니다170', '2022-03-08 02:10:40.0'),
        (171, '공유', '여기 컴퓨터 잘 다루시는 분 계세요?5', '정희은', '이것은 본문 내용입니다171', '2022-11-16 05:09:52.0'),
        (172, '알림', '여기 컴퓨터 잘 다루시는 분 계세요?6', '오보경', '이것은 본문 내용입니다172', '2022-03-10 17:29:47.0'),
        (173, '고민', '여기 컴퓨터 잘 다루시는 분 계세요?7', '제갈시우', '이것은 본문 내용입니다173', '2022-11-24 18:47:29.0'),
        (174, '잡담', '여기 컴퓨터 잘 다루시는 분 계세요?8', '박선옥', '이것은 본문 내용입니다174', '2022-09-10 15:46:01.0'),
        (175, '공지', '여기 컴퓨터 잘 다루시는 분 계세요?9', '고영희', '이것은 본문 내용입니다175', '2022-12-20 13:03:45.0'),
        (176, '공유', '여기 컴퓨터 잘 다루시는 분 계세요?10', '배세연', '이것은 본문 내용입니다176', '2022-03-02 12:52:52.0'),
        (177, '고민', '여기 컴퓨터 잘 다루시는 분 계세요?11', '강성욱', '이것은 본문 내용입니다177', '2022-12-14 15:35:22.0'),
        (178, '공지', '여기 컴퓨터 잘 다루시는 분 계세요?12', '예해준', '이것은 본문 내용입니다178', '2022-10-28 23:44:03.0'),
        (179, '고민', '여기 컴퓨터 잘 다루시는 분 계세요?13', '송해영', '이것은 본문 내용입니다179', '2022-10-21 01:50:34.0'),
        (180, '잡담', '여기 컴퓨터 잘 다루시는 분 계세요?14', '김준호', '이것은 본문 내용입니다180', '2022-07-17 15:47:45.0'),
        (181, '비밀', '여기 컴퓨터 잘 다루시는 분 계세요?15', '사공민아', '이것은 본문 내용입니다181', '2022-06-26 14:16:10.0'),
        (182, '공유', '여기 컴퓨터 잘 다루시는 분 계세요?16', '오만석', '이것은 본문 내용입니다182', '2022-04-19 05:58:16.0'),
        (183, '공유', '여기 컴퓨터 잘 다루시는 분 계세요?17', '고광호', '이것은 본문 내용입니다183', '2022-06-03 12:32:30.0'),
        (184, '비밀', '여기 컴퓨터 잘 다루시는 분 계세요?18', '조수진', '이것은 본문 내용입니다184', '2022-04-05 21:46:31.0'),
        (185, '알림', '여기 컴퓨터 잘 다루시는 분 계세요?19', '노수혜', '이것은 본문 내용입니다185', '2022-01-31 21:35:31.0'),
        (186, '공지', '여기 컴퓨터 잘 다루시는 분 계세요?20', '임광준', '이것은 본문 내용입니다186', '2022-07-20 15:31:16.0'),
        (187, '비밀', '퇴근 1시간 전입니다1', '김석호', '이것은 본문 내용입니다187', '2022-07-16 09:50:36.0'),
        (188, '공지', '퇴근 1시간 전입니다2', '노종현', '이것은 본문 내용입니다188', '2022-12-09 22:47:14.0'),
        (189, '알림', '퇴근 1시간 전입니다3', '설영우', '이것은 본문 내용입니다189', '2022-03-22 09:05:55.0'),
        (190, '비밀', '퇴근 1시간 전입니다4', '윤창식', '이것은 본문 내용입니다190', '2022-09-09 13:04:15.0'),
        (191, '비밀', '퇴근 1시간 전입니다5', '정희은', '이것은 본문 내용입니다191', '2022-07-14 16:24:42.0'),
        (192, '알림', '퇴근 1시간 전입니다6', '오보경', '이것은 본문 내용입니다192', '2022-05-17 21:54:03.0'),
        (193, '공지', '퇴근 1시간 전입니다7', '제갈시우', '이것은 본문 내용입니다193', '2022-04-22 16:08:09.0'),
        (194, '알림', '퇴근 1시간 전입니다8', '박선옥', '이것은 본문 내용입니다194', '2022-08-10 06:24:57.0'),
        (195, '알림', '퇴근 1시간 전입니다9', '고영희', '이것은 본문 내용입니다195', '2022-06-24 06:19:47.0'),
        (196, '비밀', '퇴근 1시간 전입니다10', '배세연', '이것은 본문 내용입니다196', '2022-04-26 01:26:40.0'),
        (197, '잡담', '퇴근 1시간 전입니다11', '강성욱', '이것은 본문 내용입니다197', '2022-02-21 17:05:55.0'),
        (198, '공유', '퇴근 1시간 전입니다12', '예해준', '이것은 본문 내용입니다198', '2022-09-25 16:47:38.0'),
        (199, '공지', '퇴근 1시간 전입니다13', '송해영', '이것은 본문 내용입니다199', '2022-08-19 16:30:55.0'),
        (200, '고민', '퇴근 1시간 전입니다14', '김준호', '이것은 본문 내용입니다200', '2022-11-13 16:29:01.0'),
        (201, '알림', '퇴근 1시간 전입니다15', '사공민아', '이것은 본문 내용입니다201', '2022-10-15 23:54:10.0'),
        (202, '고민', '퇴근 1시간 전입니다16', '오만석', '이것은 본문 내용입니다202', '2022-10-26 02:12:26.0'),
        (203, '알림', '퇴근 1시간 전입니다17', '고광호', '이것은 본문 내용입니다203', '2022-11-07 17:57:37.0'),
        (204, '잡담', '퇴근 1시간 전입니다18', '조수진', '이것은 본문 내용입니다204', '2022-09-14 18:50:46.0'),
        (205, '알림', '퇴근 1시간 전입니다19', '노수혜', '이것은 본문 내용입니다205', '2022-10-25 00:39:34.0'),
        (206, '비밀', '퇴근 1시간 전입니다20', '임광준', '이것은 본문 내용입니다206', '2022-12-09 13:00:50.0'),
        (207, '알림', '다들 주말에 뭐하세요?1', '김석호', '이것은 본문 내용입니다207', '2022-09-01 08:41:02.0'),
        (208, '공지', '다들 주말에 뭐하세요?2', '노종현', '이것은 본문 내용입니다208', '2022-01-16 15:09:26.0'),
        (209, '비밀', '다들 주말에 뭐하세요?3', '설영우', '이것은 본문 내용입니다209', '2022-09-27 04:31:24.0'),
        (210, '공지', '다들 주말에 뭐하세요?4', '윤창식', '이것은 본문 내용입니다210', '2022-06-26 02:44:41.0'),
        (211, '비밀', '다들 주말에 뭐하세요?5', '정희은', '이것은 본문 내용입니다211', '2022-06-16 11:25:52.0'),
        (212, '공유', '다들 주말에 뭐하세요?6', '오보경', '이것은 본문 내용입니다212', '2022-11-24 13:33:28.0'),
        (213, '비밀', '다들 주말에 뭐하세요?7', '제갈시우', '이것은 본문 내용입니다213', '2022-10-02 23:35:29.0'),
        (214, '잡담', '다들 주말에 뭐하세요?8', '박선옥', '이것은 본문 내용입니다214', '2022-09-28 20:44:24.0'),
        (215, '고민', '다들 주말에 뭐하세요?9', '고영희', '이것은 본문 내용입니다215', '2022-05-30 23:19:21.0'),
        (216, '알림', '다들 주말에 뭐하세요?10', '배세연', '이것은 본문 내용입니다216', '2022-02-13 23:38:28.0'),
        (217, '알림', '다들 주말에 뭐하세요?11', '강성욱', '이것은 본문 내용입니다217', '2022-10-02 16:25:42.0'),
        (218, '알림', '다들 주말에 뭐하세요?12', '예해준', '이것은 본문 내용입니다218', '2022-05-28 01:23:57.0'),
        (219, '잡담', '다들 주말에 뭐하세요?13', '송해영', '이것은 본문 내용입니다219', '2022-03-02 06:35:43.0'),
        (220, '비밀', '다들 주말에 뭐하세요?14', '김준호', '이것은 본문 내용입니다220', '2022-09-28 12:49:50.0'),
        (221, '공유', '다들 주말에 뭐하세요?15', '사공민아', '이것은 본문 내용입니다221', '2022-03-02 11:21:31.0'),
        (222, '비밀', '다들 주말에 뭐하세요?16', '오만석', '이것은 본문 내용입니다222', '2022-01-23 00:25:11.0'),
        (223, '고민', '다들 주말에 뭐하세요?17', '고광호', '이것은 본문 내용입니다223', '2022-02-06 20:19:29.0'),
        (224, '고민', '다들 주말에 뭐하세요?18', '조수진', '이것은 본문 내용입니다224', '2022-12-08 01:19:31.0'),
        (225, '고민', '다들 주말에 뭐하세요?19', '노수혜', '이것은 본문 내용입니다225', '2022-11-15 06:44:52.0'),
        (226, '잡담', '다들 주말에 뭐하세요?20', '임광준', '이것은 본문 내용입니다226', '2022-12-20 06:28:42.0'),
        (227, '공지', '고민이 있습니다1', '김석호', '이것은 본문 내용입니다227', '2022-10-03 13:48:26.0'),
        (228, '공유', '고민이 있습니다2', '노종현', '이것은 본문 내용입니다228', '2022-11-27 10:24:47.0'),
        (229, '공지', '고민이 있습니다3', '설영우', '이것은 본문 내용입니다229', '2022-12-16 11:25:32.0'),
        (230, '잡담', '고민이 있습니다4', '윤창식', '이것은 본문 내용입니다230', '2022-05-12 03:17:18.0'),
        (231, '잡담', '고민이 있습니다5', '정희은', '이것은 본문 내용입니다231', '2022-01-11 10:40:17.0'),
        (232, '알림', '고민이 있습니다6', '오보경', '이것은 본문 내용입니다232', '2022-05-01 10:20:33.0'),
        (233, '비밀', '고민이 있습니다7', '제갈시우', '이것은 본문 내용입니다233', '2022-06-03 08:21:04.0'),
        (234, '고민', '고민이 있습니다8', '박선옥', '이것은 본문 내용입니다234', '2022-01-12 23:22:18.0'),
        (235, '공유', '고민이 있습니다9', '고영희', '이것은 본문 내용입니다235', '2022-09-15 20:31:04.0'),
        (236, '공지', '고민이 있습니다10', '배세연', '이것은 본문 내용입니다236', '2022-11-10 21:47:54.0'),
        (237, '공지', '고민이 있습니다11', '강성욱', '이것은 본문 내용입니다237', '2022-03-26 03:47:24.0'),
        (238, '공유', '고민이 있습니다12', '예해준', '이것은 본문 내용입니다238', '2022-03-15 06:12:11.0'),
        (239, '고민', '고민이 있습니다13', '송해영', '이것은 본문 내용입니다239', '2022-06-13 17:04:36.0'),
        (240, '비밀', '고민이 있습니다14', '김준호', '이것은 본문 내용입니다240', '2022-12-22 22:28:25.0'),
        (241, '공유', '고민이 있습니다15', '사공민아', '이것은 본문 내용입니다241', '2022-08-20 08:00:10.0'),
        (242, '고민', '고민이 있습니다16', '오만석', '이것은 본문 내용입니다242', '2022-06-29 07:16:52.0'),
        (243, '비밀', '고민이 있습니다17', '고광호', '이것은 본문 내용입니다243', '2022-04-20 16:58:08.0'),
        (244, '잡담', '고민이 있습니다18', '조수진', '이것은 본문 내용입니다244', '2022-07-24 08:59:36.0'),
        (245, '비밀', '고민이 있습니다19', '노수혜', '이것은 본문 내용입니다245', '2022-12-14 23:33:46.0'),
        (246, '알림', '고민이 있습니다20', '임광준', '이것은 본문 내용입니다246', '2022-11-12 13:01:13.0'),
        (247, '잡담', '마우스 추천 받습니다1', '김석호', '이것은 본문 내용입니다247', '2022-06-26 06:19:33.0'),
        (248, '잡담', '마우스 추천 받습니다2', '노종현', '이것은 본문 내용입니다248', '2022-05-13 09:47:09.0'),
        (249, '알림', '마우스 추천 받습니다3', '설영우', '이것은 본문 내용입니다249', '2022-01-13 03:53:44.0'),
        (250, '비밀', '마우스 추천 받습니다4', '윤창식', '이것은 본문 내용입니다250', '2022-09-02 00:52:58.0'),
        (251, '고민', '마우스 추천 받습니다5', '정희은', '이것은 본문 내용입니다251', '2022-01-05 06:25:12.0'),
        (252, '공지', '마우스 추천 받습니다6', '오보경', '이것은 본문 내용입니다252', '2022-07-31 00:50:12.0'),
        (253, '공지', '마우스 추천 받습니다7', '제갈시우', '이것은 본문 내용입니다253', '2022-05-12 09:50:56.0'),
        (254, '잡담', '마우스 추천 받습니다8', '박선옥', '이것은 본문 내용입니다254', '2022-07-29 05:55:22.0'),
        (255, '알림', '마우스 추천 받습니다9', '고영희', '이것은 본문 내용입니다255', '2022-03-08 04:38:57.0'),
        (256, '잡담', '마우스 추천 받습니다10', '배세연', '이것은 본문 내용입니다256', '2022-10-28 06:38:25.0'),
        (257, '알림', '마우스 추천 받습니다11', '강성욱', '이것은 본문 내용입니다257', '2022-02-01 15:55:04.0'),
        (258, '고민', '마우스 추천 받습니다12', '예해준', '이것은 본문 내용입니다258', '2022-01-06 15:54:15.0'),
        (259, '공지', '마우스 추천 받습니다13', '송해영', '이것은 본문 내용입니다259', '2022-05-08 18:17:53.0'),
        (260, '비밀', '마우스 추천 받습니다14', '김준호', '이것은 본문 내용입니다260', '2022-01-08 14:46:06.0'),
        (261, '비밀', '마우스 추천 받습니다15', '사공민아', '이것은 본문 내용입니다261', '2022-12-01 04:56:37.0'),
        (262, '잡담', '마우스 추천 받습니다16', '오만석', '이것은 본문 내용입니다262', '2022-10-17 03:38:54.0'),
        (263, '공유', '마우스 추천 받습니다17', '고광호', '이것은 본문 내용입니다263', '2022-01-28 03:57:29.0'),
        (264, '고민', '마우스 추천 받습니다18', '조수진', '이것은 본문 내용입니다264', '2022-06-17 20:59:46.0'),
        (265, '공유', '마우스 추천 받습니다19', '노수혜', '이것은 본문 내용입니다265', '2022-02-21 12:09:11.0'),
        (266, '알림', '마우스 추천 받습니다20', '임광준', '이것은 본문 내용입니다266', '2022-08-12 04:36:16.0'),
        (267, '공유', '혹시 이 기기 어디서 살 수 있나요?1', '김석호', '이것은 본문 내용입니다267', '2022-07-26 11:43:15.0'),
        (268, '공지', '혹시 이 기기 어디서 살 수 있나요?2', '노종현', '이것은 본문 내용입니다268', '2022-05-10 03:04:57.0'),
        (269, '알림', '혹시 이 기기 어디서 살 수 있나요?3', '설영우', '이것은 본문 내용입니다269', '2022-05-15 12:05:14.0'),
        (270, '잡담', '혹시 이 기기 어디서 살 수 있나요?4', '윤창식', '이것은 본문 내용입니다270', '2022-03-11 07:56:34.0'),
        (271, '잡담', '혹시 이 기기 어디서 살 수 있나요?5', '정희은', '이것은 본문 내용입니다271', '2022-09-17 10:02:38.0'),
        (272, '고민', '혹시 이 기기 어디서 살 수 있나요?6', '오보경', '이것은 본문 내용입니다272', '2022-11-04 03:06:48.0'),
        (273, '고민', '혹시 이 기기 어디서 살 수 있나요?7', '제갈시우', '이것은 본문 내용입니다273', '2022-10-14 16:18:56.0'),
        (274, '잡담', '혹시 이 기기 어디서 살 수 있나요?8', '박선옥', '이것은 본문 내용입니다274', '2022-05-24 22:28:38.0'),
        (275, '고민', '혹시 이 기기 어디서 살 수 있나요?9', '고영희', '이것은 본문 내용입니다275', '2022-03-30 21:39:17.0'),
        (276, '잡담', '혹시 이 기기 어디서 살 수 있나요?10', '배세연', '이것은 본문 내용입니다276', '2022-01-03 06:48:05.0'),
        (277, '공유', '혹시 이 기기 어디서 살 수 있나요?11', '강성욱', '이것은 본문 내용입니다277', '2022-08-23 14:47:44.0'),
        (278, '고민', '혹시 이 기기 어디서 살 수 있나요?12', '예해준', '이것은 본문 내용입니다278', '2022-03-05 19:38:58.0'),
        (279, '고민', '혹시 이 기기 어디서 살 수 있나요?13', '송해영', '이것은 본문 내용입니다279', '2022-03-05 02:30:57.0'),
        (280, '공유', '혹시 이 기기 어디서 살 수 있나요?14', '김준호', '이것은 본문 내용입니다280', '2022-11-09 00:11:29.0'),
        (281, '고민', '혹시 이 기기 어디서 살 수 있나요?15', '사공민아', '이것은 본문 내용입니다281', '2022-11-29 07:56:32.0'),
        (282, '공지', '혹시 이 기기 어디서 살 수 있나요?16', '오만석', '이것은 본문 내용입니다282', '2022-03-24 06:45:09.0'),
        (283, '공지', '혹시 이 기기 어디서 살 수 있나요?17', '고광호', '이것은 본문 내용입니다283', '2022-01-30 11:29:13.0'),
        (284, '알림', '혹시 이 기기 어디서 살 수 있나요?18', '조수진', '이것은 본문 내용입니다284', '2022-04-20 07:55:16.0'),
        (285, '잡담', '혹시 이 기기 어디서 살 수 있나요?19', '노수혜', '이것은 본문 내용입니다285', '2022-06-27 02:39:40.0'),
        (286, '잡담', '혹시 이 기기 어디서 살 수 있나요?20', '임광준', '이것은 본문 내용입니다286', '2022-03-11 05:49:48.0'),
        (287, '비밀', '이 제품 문제가 많나요?1', '김석호', '이것은 본문 내용입니다287', '2022-10-15 16:14:18.0'),
        (288, '비밀', '이 제품 문제가 많나요?2', '노종현', '이것은 본문 내용입니다288', '2022-06-24 04:30:51.0'),
        (289, '공유', '이 제품 문제가 많나요?3', '설영우', '이것은 본문 내용입니다289', '2022-07-08 07:50:22.0'),
        (290, '공유', '이 제품 문제가 많나요?4', '윤창식', '이것은 본문 내용입니다290', '2022-04-13 11:37:00.0'),
        (291, '잡담', '이 제품 문제가 많나요?5', '정희은', '이것은 본문 내용입니다291', '2022-02-02 16:31:10.0'),
        (292, '공지', '이 제품 문제가 많나요?6', '오보경', '이것은 본문 내용입니다292', '2022-04-06 14:09:34.0'),
        (293, '고민', '이 제품 문제가 많나요?7', '김석호', '이것은 본문 내용입니다293', '2022-05-02 14:03:48.0'),
        (294, '공유', '이 제품 문제가 많나요?8', '노종현', '이것은 본문 내용입니다294', '2022-01-29 07:12:51.0'),
        (295, '공지', '이 제품 문제가 많나요?9', '설영우', '이것은 본문 내용입니다295', '2022-05-01 06:13:50.0'),
        (296, '잡담', '이 제품 문제가 많나요?10', '윤창식', '이것은 본문 내용입니다296', '2022-05-03 01:49:46.0'),
        (297, '잡담', '이 제품 문제가 많나요?11', '정희은', '이것은 본문 내용입니다297', '2022-04-12 11:03:18.0'),
        (298, '공지', '이 제품 문제가 많나요?12', '오보경', '이것은 본문 내용입니다298', '2022-09-13 05:51:51.0'),
        (299, '공유', '이 제품 문제가 많나요?13', '제갈시우', '이것은 본문 내용입니다299', '2022-07-23 22:19:31.0'),
        (300, '공유', '이 제품 문제가 많나요?14', '박선옥', '이것은 본문 내용입니다300', '2022-05-04 03:47:34.0'),
        (301, '비밀', '이 제품 문제가 많나요?15', '고영희', '이것은 본문 내용입니다301', '2022-01-15 11:43:32.0'),
        (302, '비밀', '이 제품 문제가 많나요?16', '배세연', '이것은 본문 내용입니다302', '2022-04-21 22:35:39.0'),
        (303, '잡담', '이 제품 문제가 많나요?17', '강성욱', '이것은 본문 내용입니다303', '2022-02-18 22:22:27.0'),
        (304, '알림', '이 제품 문제가 많나요?18', '예해준', '이것은 본문 내용입니다304', '2022-10-28 05:50:40.0'),
        (305, '공유', '이 제품 문제가 많나요?19', '송해영', '이것은 본문 내용입니다305', '2022-01-22 13:23:18.0'),
        (306, '공유', '이 제품 문제가 많나요?20', '김준호', '이것은 본문 내용입니다306', '2022-02-10 08:40:47.0'),
        (307, '비밀', '노트북 구매 질문 있습니다!1', '사공민아', '이것은 본문 내용입니다307', '2022-04-17 18:48:12.0'),
        (308, '공유', '노트북 구매 질문 있습니다!2', '오만석', '이것은 본문 내용입니다308', '2022-02-16 02:23:26.0'),
        (309, '고민', '노트북 구매 질문 있습니다!3', '고광호', '이것은 본문 내용입니다309', '2022-09-11 14:15:38.0'),
        (310, '알림', '노트북 구매 질문 있습니다!4', '조수진', '이것은 본문 내용입니다310', '2022-07-02 10:32:35.0'),
        (311, '고민', '노트북 구매 질문 있습니다!5', '노수혜', '이것은 본문 내용입니다311', '2022-06-15 10:50:44.0'),
        (312, '공지', '노트북 구매 질문 있습니다!6', '임광준', '이것은 본문 내용입니다312', '2022-12-20 07:39:37.0'),
        (313, '공지', '노트북 구매 질문 있습니다!7', '김석호', '이것은 본문 내용입니다313', '2022-02-24 21:04:35.0'),
        (314, '공지', '노트북 구매 질문 있습니다!8', '노종현', '이것은 본문 내용입니다314', '2022-02-05 20:32:21.0'),
        (315, '공유', '노트북 구매 질문 있습니다!9', '설영우', '이것은 본문 내용입니다315', '2022-06-18 02:06:06.0'),
        (316, '알림', '노트북 구매 질문 있습니다!10', '윤창식', '이것은 본문 내용입니다316', '2022-04-23 17:29:16.0'),
        (317, '공유', '노트북 구매 질문 있습니다!11', '정희은', '이것은 본문 내용입니다317', '2022-10-31 19:45:53.0'),
        (318, '알림', '노트북 구매 질문 있습니다!12', '오보경', '이것은 본문 내용입니다318', '2022-10-25 10:10:28.0'),
        (319, '고민', '노트북 구매 질문 있습니다!13', '제갈시우', '이것은 본문 내용입니다319', '2022-06-03 10:30:08.0'),
        (320, '잡담', '노트북 구매 질문 있습니다!14', '박선옥', '이것은 본문 내용입니다320', '2022-01-23 23:31:26.0'),
        (321, '공지', '노트북 구매 질문 있습니다!15', '고영희', '이것은 본문 내용입니다321', '2022-12-10 04:08:43.0'),
        (322, '공유', '노트북 구매 질문 있습니다!16', '배세연', '이것은 본문 내용입니다322', '2022-07-07 04:11:59.0'),
        (323, '고민', '노트북 구매 질문 있습니다!17', '강성욱', '이것은 본문 내용입니다323', '2022-09-24 22:17:26.0'),
        (324, '공지', '노트북 구매 질문 있습니다!18', '예해준', '이것은 본문 내용입니다324', '2022-10-22 05:24:50.0'),
        (325, '고민', '노트북 구매 질문 있습니다!19', '송해영', '이것은 본문 내용입니다325', '2022-10-22 12:52:34.0'),
        (326, '잡담', '노트북 구매 질문 있습니다!20', '김준호', '이것은 본문 내용입니다326', '2022-09-24 09:50:52.0'),
        (327, '비밀', '멋진 풍경 보고 가세요1', '사공민아', '이것은 본문 내용입니다327', '2022-08-30 00:32:23.0'),
        (328, '공유', '멋진 풍경 보고 가세요2', '오만석', '이것은 본문 내용입니다328', '2022-09-08 20:37:08.0'),
        (329, '공유', '멋진 풍경 보고 가세요3', '고광호', '이것은 본문 내용입니다329', '2022-09-26 03:30:56.0'),
        (330, '비밀', '멋진 풍경 보고 가세요4', '조수진', '이것은 본문 내용입니다330', '2022-09-25 21:42:10.0'),
        (331, '알림', '멋진 풍경 보고 가세요5', '노수혜', '이것은 본문 내용입니다331', '2022-11-03 20:01:11.0'),
        (332, '공지', '멋진 풍경 보고 가세요6', '임광준', '이것은 본문 내용입니다332', '2022-04-26 04:25:18.0'),
        (333, '비밀', '멋진 풍경 보고 가세요7', '김석호', '이것은 본문 내용입니다333', '2022-06-17 00:48:26.0'),
        (334, '공지', '멋진 풍경 보고 가세요8', '노종현', '이것은 본문 내용입니다334', '2022-05-14 05:00:48.0'),
        (335, '알림', '멋진 풍경 보고 가세요9', '설영우', '이것은 본문 내용입니다335', '2022-09-17 02:27:44.0'),
        (336, '비밀', '멋진 풍경 보고 가세요10', '윤창식', '이것은 본문 내용입니다336', '2022-11-02 18:34:00.0'),
        (337, '비밀', '멋진 풍경 보고 가세요11', '정희은', '이것은 본문 내용입니다337', '2022-09-26 17:01:28.0'),
        (338, '알림', '멋진 풍경 보고 가세요12', '오보경', '이것은 본문 내용입니다338', '2022-05-17 20:51:32.0'),
        (339, '공지', '멋진 풍경 보고 가세요13', '제갈시우', '이것은 본문 내용입니다339', '2022-10-27 12:00:37.0'),
        (340, '알림', '멋진 풍경 보고 가세요14', '박선옥', '이것은 본문 내용입니다340', '2022-08-25 04:46:07.0'),
        (341, '알림', '멋진 풍경 보고 가세요15', '고영희', '이것은 본문 내용입니다341', '2022-07-09 23:19:44.0'),
        (342, '비밀', '멋진 풍경 보고 가세요16', '배세연', '이것은 본문 내용입니다342', '2022-04-30 03:05:54.0'),
        (343, '잡담', '멋진 풍경 보고 가세요17', '강성욱', '이것은 본문 내용입니다343', '2022-07-04 00:31:56.0'),
        (344, '공유', '멋진 풍경 보고 가세요18', '예해준', '이것은 본문 내용입니다344', '2022-01-09 16:16:33.0'),
        (345, '공지', '멋진 풍경 보고 가세요19', '송해영', '이것은 본문 내용입니다345', '2022-09-23 10:04:58.0'),
        (346, '고민', '멋진 풍경 보고 가세요20', '김준호', '이것은 본문 내용입니다346', '2022-04-30 23:03:47.0'),
        (347, '알림', '바람막이 하나 샀습니다1', '사공민아', '이것은 본문 내용입니다347', '2022-07-29 05:06:01.0'),
        (348, '고민', '바람막이 하나 샀습니다2', '오만석', '이것은 본문 내용입니다348', '2022-10-19 17:39:00.0'),
        (349, '알림', '바람막이 하나 샀습니다3', '고광호', '이것은 본문 내용입니다349', '2022-10-17 17:36:58.0'),
        (350, '잡담', '바람막이 하나 샀습니다4', '조수진', '이것은 본문 내용입니다350', '2022-10-15 08:05:09.0'),
        (351, '알림', '바람막이 하나 샀습니다5', '노수혜', '이것은 본문 내용입니다351', '2022-02-09 09:22:15.0'),
        (352, '비밀', '바람막이 하나 샀습니다6', '임광준', '이것은 본문 내용입니다352', '2022-09-25 05:12:33.0'),
        (353, '알림', '바람막이 하나 샀습니다7', '김석호', '이것은 본문 내용입니다353', '2022-01-28 13:13:36.0'),
        (354, '공지', '바람막이 하나 샀습니다8', '노종현', '이것은 본문 내용입니다354', '2022-04-13 10:37:50.0'),
        (355, '비밀', '바람막이 하나 샀습니다9', '설영우', '이것은 본문 내용입니다355', '2022-01-04 18:53:29.0'),
        (356, '공지', '바람막이 하나 샀습니다10', '윤창식', '이것은 본문 내용입니다356', '2022-01-13 01:15:14.0'),
        (357, '비밀', '바람막이 하나 샀습니다11', '정희은', '이것은 본문 내용입니다357', '2022-09-17 20:23:21.0'),
        (358, '공유', '바람막이 하나 샀습니다12', '오보경', '이것은 본문 내용입니다358', '2022-05-15 00:37:43.0'),
        (359, '비밀', '바람막이 하나 샀습니다13', '제갈시우', '이것은 본문 내용입니다359', '2022-09-02 06:51:32.0'),
        (360, '잡담', '바람막이 하나 샀습니다14', '박선옥', '이것은 본문 내용입니다360', '2022-03-26 06:16:08.0'),
        (361, '고민', '바람막이 하나 샀습니다15', '고영희', '이것은 본문 내용입니다361', '2022-06-11 18:09:37.0'),
        (362, '알림', '바람막이 하나 샀습니다16', '배세연', '이것은 본문 내용입니다362', '2022-08-10 13:38:02.0'),
        (363, '알림', '바람막이 하나 샀습니다17', '강성욱', '이것은 본문 내용입니다363', '2022-01-13 12:12:30.0'),
        (364, '알림', '바람막이 하나 샀습니다18', '예해준', '이것은 본문 내용입니다364', '2022-05-13 10:19:45.0'),
        (365, '잡담', '바람막이 하나 샀습니다19', '송해영', '이것은 본문 내용입니다365', '2022-12-16 22:00:19.0'),
        (366, '비밀', '바람막이 하나 샀습니다20', '김준호', '이것은 본문 내용입니다366', '2022-09-09 23:32:50.0'),
        (367, '공유', '3년 전 해운대에서1', '사공민아', '이것은 본문 내용입니다367', '2022-08-13 16:18:34.0'),
        (368, '비밀', '3년 전 해운대에서2', '오만석', '이것은 본문 내용입니다368', '2022-11-27 03:07:51.0'),
        (369, '고민', '3년 전 해운대에서3', '고광호', '이것은 본문 내용입니다369', '2022-08-22 20:04:22.0'),
        (370, '고민', '3년 전 해운대에서4', '조수진', '이것은 본문 내용입니다370', '2022-02-13 09:48:58.0'),
        (371, '고민', '3년 전 해운대에서5', '노수혜', '이것은 본문 내용입니다371', '2022-11-28 11:53:10.0'),
        (372, '잡담', '3년 전 해운대에서6', '임광준', '이것은 본문 내용입니다372', '2022-11-14 04:06:50.0'),
        (373, '공지', '3년 전 해운대에서7', '김석호', '이것은 본문 내용입니다373', '2022-05-08 21:41:32.0'),
        (374, '공유', '3년 전 해운대에서8', '노종현', '이것은 본문 내용입니다374', '2022-11-01 15:36:47.0'),
        (375, '공지', '3년 전 해운대에서9', '설영우', '이것은 본문 내용입니다375', '2022-06-05 00:24:40.0'),
        (376, '잡담', '3년 전 해운대에서10', '윤창식', '이것은 본문 내용입니다376', '2022-05-22 20:18:40.0'),
        (377, '잡담', '3년 전 해운대에서11', '정희은', '이것은 본문 내용입니다377', '2022-09-09 21:21:52.0'),
        (378, '알림', '3년 전 해운대에서12', '오보경', '이것은 본문 내용입니다378', '2022-01-31 09:17:31.0'),
        (379, '비밀', '3년 전 해운대에서13', '제갈시우', '이것은 본문 내용입니다379', '2022-11-20 03:23:09.0'),
        (380, '고민', '3년 전 해운대에서14', '박선옥', '이것은 본문 내용입니다380', '2022-09-17 02:54:59.0'),
        (381, '공유', '3년 전 해운대에서15', '고영희', '이것은 본문 내용입니다381', '2022-12-28 23:13:44.0'),
        (382, '공지', '3년 전 해운대에서16', '배세연', '이것은 본문 내용입니다382', '2022-05-04 03:23:14.0'),
        (383, '공지', '3년 전 해운대에서17', '강성욱', '이것은 본문 내용입니다383', '2022-01-26 15:18:03.0'),
        (384, '공유', '3년 전 해운대에서18', '예해준', '이것은 본문 내용입니다384', '2022-09-28 10:15:07.0'),
        (385, '고민', '3년 전 해운대에서19', '송해영', '이것은 본문 내용입니다385', '2022-05-17 03:53:59.0'),
        (386, '비밀', '3년 전 해운대에서20', '김준호', '이것은 본문 내용입니다386', '2022-02-09 18:51:48.0'),
        (387, '공유', '제주도 여행 갈건데 어디가 좋나요?1', '사공민아', '이것은 본문 내용입니다387', '2022-08-10 03:11:09.0'),
        (388, '고민', '제주도 여행 갈건데 어디가 좋나요?2', '오만석', '이것은 본문 내용입니다388', '2022-04-16 22:14:14.0'),
        (389, '비밀', '제주도 여행 갈건데 어디가 좋나요?3', '고광호', '이것은 본문 내용입니다389', '2022-06-10 02:06:13.0'),
        (390, '잡담', '제주도 여행 갈건데 어디가 좋나요?4', '조수진', '이것은 본문 내용입니다390', '2022-12-14 14:02:45.0'),
        (391, '비밀', '제주도 여행 갈건데 어디가 좋나요?5', '노수혜', '이것은 본문 내용입니다391', '2022-06-15 01:32:07.0'),
        (392, '알림', '제주도 여행 갈건데 어디가 좋나요?6', '임광준', '이것은 본문 내용입니다392', '2022-09-30 16:43:34.0'),
        (393, '잡담', '제주도 여행 갈건데 어디가 좋나요?7', '김석호', '이것은 본문 내용입니다393', '2022-11-13 04:25:59.0'),
        (394, '잡담', '제주도 여행 갈건데 어디가 좋나요?8', '노종현', '이것은 본문 내용입니다394', '2022-03-16 11:15:44.0'),
        (395, '알림', '제주도 여행 갈건데 어디가 좋나요?9', '설영우', '이것은 본문 내용입니다395', '2022-08-01 06:43:21.0'),
        (396, '비밀', '제주도 여행 갈건데 어디가 좋나요?10', '윤창식', '이것은 본문 내용입니다396', '2022-10-21 01:40:46.0'),
        (397, '고민', '제주도 여행 갈건데 어디가 좋나요?11', '정희은', '이것은 본문 내용입니다397', '2022-09-27 02:58:27.0'),
        (398, '공지', '제주도 여행 갈건데 어디가 좋나요?12', '오보경', '이것은 본문 내용입니다398', '2022-07-26 01:39:12.0'),
        (399, '공지', '제주도 여행 갈건데 어디가 좋나요?13', '제갈시우', '이것은 본문 내용입니다399', '2022-06-24 09:32:29.0'),
        (400, '잡담', '제주도 여행 갈건데 어디가 좋나요?14', '박선옥', '이것은 본문 내용입니다400', '2022-02-17 13:07:01.0'),
        (401, '알림', '제주도 여행 갈건데 어디가 좋나요?15', '고영희', '이것은 본문 내용입니다401', '2022-01-11 15:39:37.0'),
        (402, '잡담', '제주도 여행 갈건데 어디가 좋나요?16', '배세연', '이것은 본문 내용입니다402', '2022-03-01 05:58:08.0'),
        (403, '알림', '제주도 여행 갈건데 어디가 좋나요?17', '강성욱', '이것은 본문 내용입니다403', '2022-08-28 03:06:57.0'),
        (404, '고민', '제주도 여행 갈건데 어디가 좋나요?18', '예해준', '이것은 본문 내용입니다404', '2022-02-02 08:29:13.0'),
        (405, '공지', '제주도 여행 갈건데 어디가 좋나요?19', '송해영', '이것은 본문 내용입니다405', '2022-07-18 03:14:00.0'),
        (406, '비밀', '제주도 여행 갈건데 어디가 좋나요?20', '김준호', '이것은 본문 내용입니다406', '2022-11-14 01:10:00.0'),
        (407, '비밀', '관광지 추천좀요1', '사공민아', '이것은 본문 내용입니다407', '2022-09-12 01:11:32.0'),
        (408, '잡담', '관광지 추천좀요2', '오만석', '이것은 본문 내용입니다408', '2022-07-29 10:39:10.0'),
        (409, '공유', '관광지 추천좀요3', '고광호', '이것은 본문 내용입니다409', '2022-11-28 05:32:12.0'),
        (410, '고민', '관광지 추천좀요4', '조수진', '이것은 본문 내용입니다410', '2022-03-10 19:25:01.0'),
        (411, '공유', '관광지 추천좀요5', '노수혜', '이것은 본문 내용입니다411', '2022-06-06 09:15:23.0'),
        (412, '알림', '관광지 추천좀요6', '임광준', '이것은 본문 내용입니다412', '2022-02-13 00:13:46.0'),
        (413, '공유', '관광지 추천좀요7', '김석호', '이것은 본문 내용입니다413', '2022-09-17 04:00:10.0'),
        (414, '공지', '관광지 추천좀요8', '노종현', '이것은 본문 내용입니다414', '2022-06-12 00:37:29.0'),
        (415, '알림', '관광지 추천좀요9', '설영우', '이것은 본문 내용입니다415', '2022-01-20 20:36:07.0'),
        (416, '잡담', '관광지 추천좀요10', '윤창식', '이것은 본문 내용입니다416', '2022-12-21 15:46:11.0'),
        (417, '잡담', '관광지 추천좀요11', '정희은', '이것은 본문 내용입니다417', '2022-08-31 16:10:38.0'),
        (418, '고민', '관광지 추천좀요12', '오보경', '이것은 본문 내용입니다418', '2022-11-13 13:57:29.0'),
        (419, '고민', '관광지 추천좀요13', '제갈시우', '이것은 본문 내용입니다419', '2022-01-16 06:39:09.0'),
        (420, '잡담', '관광지 추천좀요14', '박선옥', '이것은 본문 내용입니다420', '2022-08-04 01:47:38.0'),
        (421, '고민', '관광지 추천좀요15', '고영희', '이것은 본문 내용입니다421', '2022-03-09 03:42:53.0'),
        (422, '잡담', '관광지 추천좀요16', '배세연', '이것은 본문 내용입니다422', '2022-06-02 21:52:21.0'),
        (423, '공유', '관광지 추천좀요17', '강성욱', '이것은 본문 내용입니다423', '2022-10-15 10:25:52.0'),
        (424, '고민', '관광지 추천좀요18', '예해준', '이것은 본문 내용입니다424', '2022-02-27 09:23:30.0'),
        (425, '고민', '관광지 추천좀요19', '송해영', '이것은 본문 내용입니다425', '2022-04-18 16:11:36.0'),
        (426, '공유', '관광지 추천좀요20', '김준호', '이것은 본문 내용입니다426', '2022-07-27 06:24:33.0'),
        (427, '고민', '시골로 먼저 내려갑니다1', '사공민아', '이것은 본문 내용입니다427', '2022-08-23 13:00:50.0'),
        (428, '공지', '시골로 먼저 내려갑니다2', '오만석', '이것은 본문 내용입니다428', '2022-05-21 18:40:29.0'),
        (429, '공지', '시골로 먼저 내려갑니다3', '고광호', '이것은 본문 내용입니다429', '2022-05-25 07:59:43.0'),
        (430, '알림', '시골로 먼저 내려갑니다4', '조수진', '이것은 본문 내용입니다430', '2022-04-02 23:36:32.0'),
        (431, '잡담', '시골로 먼저 내려갑니다5', '노수혜', '이것은 본문 내용입니다431', '2022-10-27 22:07:09.0'),
        (432, '잡담', '시골로 먼저 내려갑니다6', '임광준', '이것은 본문 내용입니다432', '2022-05-17 00:06:16.0'),
        (433, '비밀', '시골로 먼저 내려갑니다7', '김석호', '이것은 본문 내용입니다433', '2022-12-08 02:44:21.0'),
        (434, '비밀', '시골로 먼저 내려갑니다8', '노종현', '이것은 본문 내용입니다434', '2022-08-23 15:02:31.0'),
        (435, '공유', '시골로 먼저 내려갑니다9', '설영우', '이것은 본문 내용입니다435', '2022-01-05 04:32:38.0'),
        (436, '공유', '시골로 먼저 내려갑니다10', '윤창식', '이것은 본문 내용입니다436', '2022-01-02 01:18:28.0'),
        (437, '잡담', '시골로 먼저 내려갑니다11', '정희은', '이것은 본문 내용입니다437', '2022-08-11 01:08:40.0'),
        (438, '공지', '시골로 먼저 내려갑니다12', '오보경', '이것은 본문 내용입니다438', '2022-12-17 10:16:53.0');