-- 表创建
CREATE TABLE `absent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `dormitory_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `dormitory_admin_id` int DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `building` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `introduction` varchar(1000) DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `dormitory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `available` int DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `dormitory_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `moveout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(11) DEFAULT NULL,
  `dormitory_id` varchar(50) DEFAULT NULL,
  `reason` varchar(11) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dormitory_id` int DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `system_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- 初始化表数据
TRUNCATE TABLE system_admin;
TRUNCATE TABLE student;
TRUNCATE TABLE moveout;
TRUNCATE TABLE dormitory_admin;
TRUNCATE TABLE dormitory;
TRUNCATE TABLE building;
TRUNCATE TABLE absent;

-- 系统管理员信息
INSERT INTO `system_admin` VALUES (1,'admin01','admin01','系统管理员1','13856789012'),
																	(2,'admin02','admin02','系统管理员2','18512345678'),
																	(3,'admin03','admin03','系统管理员3','15998765432');


-- 学生信息
INSERT INTO `student`
VALUES (1,  '001',  '温博',   '男', 1, '入住', '2023-11-25'),
       (2,  '002',  '周涛',   '男', 1, '入住', '2023-11-25'),
       (3,  '003',  '王伟',   '男', 1, '入住', '2023-11-25'),
       (4,  '004',  '何周',   '男', 1, '迁出', '2023-11-25'),
       (5,  '005',  '王维利', '男', 1, '迁出', '2023-11-25'),
       (6,  '006',  '李双',   '男', 2, '入住', '2023-11-25'),
       (7,  '007',  '李小峰', '男', 2, '入住', '2023-11-25'),
       (8,  '008',  '孙奇',   '男', 2, '入住', '2023-11-25'),
       (9,  '009',  '李立',   '男', 2, '入住', '2023-11-25'),
       (10, '010',  '周华发', '男', 2, '入住', '2023-11-25'),
       (11, '011',  '赵正义', '男', 3, '入住', '2023-11-27'),
       (12, '012',  '李明',   '男', 3, '入住', '2023-11-27'),
       (13, '013',  '许鹏飞', '男', 3, '入住', '2023-11-27'),
       (14, '014',  '朱海',   '男', 3, '入住', '2023-11-27'),
       (15, '015',  '苏苏苏', '男', 3, '入住', '2023-11-27'),
       (16, '016',  '李雪',   '男', 3, '入住', '2023-11-27'),
       (17, '017',  '李爽',   '男', 4, '入住', '2023-11-27'),
       (18, '018',  '王纯',   '男', 4, '入住', '2023-11-27'),
       (19, '019',  '赵日',   '男', 4, '入住', '2023-11-27'),
       (20, '020',  '刘明',   '男', 4, '迁出', '2023-11-25'),
       (21, '021',  '张莉',   '男', 4, '迁出', '2023-11-25'),
       (22, '022',  '王建国', '男', 5, '入住', '2023-11-25'),
       (23, '023',  '陈小丽', '男', 5, '入住', '2023-11-25'),
       (24, '024',  '李强',   '男', 5, '入住', '2023-11-25'),
       (25, '025',  '王倩',   '男', 5, '入住', '2023-11-25'),
       (26, '026',  '张宇',   '男', 5, '入住', '2023-11-25'),
       (27, '027',  '赵丽',   '男', 5, '入住', '2023-11-25'),
       (28, '028',  '刘伟',   '男', 6, '入住', '2023-11-25'),
       (29, '029',  '杨柳',   '男', 6, '入住', '2023-11-25'),
       (30, '030',  '王磊',   '男', 6, '入住', '2023-11-25');



-- 迁出信息
INSERT INTO `moveout`
VALUES (1, '4',  '1', '毕业', '2023-10-24'),
       (2, '5',  '1', '入伍', '2023-11-25'),
       (3, '20', '4', '毕业', '2023-10-25'),
       (4, '21', '4', '毕业', '2023-10-23');


-- 寝室管理员信息
INSERT INTO `dormitory_admin`
VALUES (1, 'user01', 'user01', '宋玉', '女', '17634567890'),
       (2, 'user02', 'user02', '王力', '男', '13765432109'),
       (3, 'user03', 'user03', '张三', '女', '18209876543');


-- 寝室信息
INSERT INTO `dormitory`
VALUES (1, 1, '101', 6,  3,  '13345678901'),
       (2, 1, '102', 6,  1,  '18789012345'),
       (3, 1, '103', 6,  0,  '15067890123'),
       (4, 2, '201', 8,  5,  '13456789012'),
       (5, 2, '202', 8,  2,  '13987654321'),
       (6, 2, '203', 8,  5,  '18345678901'),
       (7, 3, '301', 10, 10, '15890123456'),
       (8, 3, '302', 10, 10, '17789012345'),
       (9, 3, '303', 10, 10, '13678901234');

-- 楼宇信息
INSERT INTO `building`
VALUES (1, '1号楼', '人工智能学院男寝室楼', 1),
       (2, '2号楼', '人工智能学院女寝室楼', 2),
       (3, '3号楼', '经济管理学院男寝室楼', 3),
			 (4, '4号楼', '经济管理学院女寝室楼', 4);


-- 缺寝信息
INSERT INTO `absent`
VALUES (1, 1, 1, 1,  1, '2023-11-28', '去医院'),
       (2, 1, 2, 6,  1, '2023-11-27', '外出比赛'),
       (3, 2, 5, 23, 2, '2023-11-29', '返乡');



















