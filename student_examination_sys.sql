create database student_examination_sys;
use student_examination_sys;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(10) NOT NULL,
  `student_id` int(10) NULL DEFAULT NULL,
  `subject_id` int(10) NULL DEFAULT NULL,
  `score` double(20, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


INSERT INTO `score` VALUES (1, 1, 1001, 80);
INSERT INTO `score` VALUES (2, 2, 1002, 60);
INSERT INTO `score` VALUES (3, 1, 1001, 70);
INSERT INTO `score` VALUES (4, 2, 1002, 60);


DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


INSERT INTO `student` VALUES (1, 'zhangsan', 18, 'male');
INSERT INTO `student` VALUES (2, 'lisi', 20, 'female');


DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` int(10) NOT NULL,
  `subject` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;


INSERT INTO `subject` VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO `subject` VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');

SET FOREIGN_KEY_CHECKS = 1;
