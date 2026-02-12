
 DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (

  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
   `b_color` enum('W') NOT NULL,
   `piece_color` enum('W','B') DEFAULT NULL,
     `piece` ENUM('P1','P2') DEFAULT NULL,
      PRIMARY KEY (`y`,`x`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
      
   LOCK TABLES `board` WRITE;
   INSERT INTO `board` VALUES(1,1,'W','B','P2'),(1, 2, 'W', NULL, NULL), (1, 3, 'W', NULL, NULL), (1, 4, 'W', NULL, NULL), (1, 5, 'W', NULL, NULL), (1, 6, 'W', NULL, NULL),(1,7,'W','W','P1'),(2, 1, 'W', NULL, NULL), (2, 2, 'W', NULL, NULL), (2, 3, 'W', NULL, NULL), (2, 4, 'W', NULL, NULL), (2, 5, 'W', NULL, NULL), (2, 6, 'W', NULL, NULL), (2, 7, 'W', NULL, NULL),(3, 1, 'W', NULL, NULL), (3, 2, 'W', NULL, NULL), (3, 3, 'W', NULL, NULL), (3, 4, 'W', NULL, NULL), (3, 5, 'W', NULL, NULL), (3, 6, 'W', NULL, NULL), (3, 7, 'W', NULL, NULL),(4, 1, 'W', NULL, NULL), (4, 2, 'W', NULL, NULL), (4, 3, 'W', NULL, NULL), (4, 4, 'W', NULL, NULL), (4, 5, 'W', NULL, NULL), (4, 6, 'W', NULL, NULL), (4, 7, 'W', NULL, NULL),(5, 1, 'W', NULL, NULL), (5, 2, 'W', NULL, NULL), (5, 3, 'W', NULL, NULL), (5, 4, 'W', NULL, NULL), (5, 5, 'W', NULL, NULL), (5, 6, 'W', NULL, NULL), (5, 7, 'W', NULL, NULL),(6, 1, 'W', NULL, NULL), (6, 2, 'W', NULL, NULL), (6, 3, 'W', NULL, NULL), (6, 4, 'W', NULL, NULL), (6, 5, 'W', NULL, NULL), (6, 6, 'W', NULL, NULL), (6, 7, 'W', NULL, NULL),(7,1,'W','W','P1'),(7, 2, 'W', NULL, NULL), (7, 3, 'W', NULL, NULL), (7, 4, 'W', NULL, NULL), (7, 5, 'W', NULL, NULL), (7, 6, 'W', NULL, NULL), (7,7,'W','B','P2');
   UNLOCK TABLES;
   
   CREATE TABLE `board_empty` (
    `x` tinyint(1) NOT NULL,
    `y` tinyint(1) NOT NULL,
   `b_color` enum('W') NOT NULL,
   `piece_color` enum('W','B') DEFAULT NULL,
     `piece` ENUM('P1','P2') DEFAULT NULL,
      PRIMARY KEY (`y`,`x`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
	
	LOCK TABLES `board_empty` WRITE;
   INSERT INTO `board_empty` VALUES(1,1,'W','B','P2'),(1, 2, 'W', NULL, NULL), (1, 3, 'W', NULL, NULL), (1, 4, 'W', NULL, NULL), (1, 5, 'W', NULL, NULL), (1, 6, 'W', NULL, NULL),(1,7,'W','W','P1'),(2, 1, 'W', NULL, NULL), (2, 2, 'W', NULL, NULL), (2, 3, 'W', NULL, NULL), (2, 4, 'W', NULL, NULL), (2, 5, 'W', NULL, NULL), (2, 6, 'W', NULL, NULL), (2, 7, 'W', NULL, NULL),(3, 1, 'W', NULL, NULL), (3, 2, 'W', NULL, NULL), (3, 3, 'W', NULL, NULL), (3, 4, 'W', NULL, NULL), (3, 5, 'W', NULL, NULL), (3, 6, 'W', NULL, NULL), (3, 7, 'W', NULL, NULL),(4, 1, 'W', NULL, NULL), (4, 2, 'W', NULL, NULL), (4, 3, 'W', NULL, NULL), (4, 4, 'W', NULL, NULL), (4, 5, 'W', NULL, NULL), (4, 6, 'W', NULL, NULL), (4, 7, 'W', NULL, NULL),(5, 1, 'W', NULL, NULL), (5, 2, 'W', NULL, NULL), (5, 3, 'W', NULL, NULL), (5, 4, 'W', NULL, NULL), (5, 5, 'W', NULL, NULL), (5, 6, 'W', NULL, NULL), (5, 7, 'W', NULL, NULL),(6, 1, 'W', NULL, NULL), (6, 2, 'W', NULL, NULL), (6, 3, 'W', NULL, NULL), (6, 4, 'W', NULL, NULL), (6, 5, 'W', NULL, NULL), (6, 6, 'W', NULL, NULL), (6, 7, 'W', NULL, NULL),(7,1,'W','W','P1'),(7, 2, 'W', NULL, NULL), (7, 3, 'W', NULL, NULL), (7, 4, 'W', NULL, NULL), (7, 5, 'W', NULL, NULL), (7, 6, 'W', NULL, NULL), (7,7,'W','B','P2');
   UNLOCK TABLES;
   
   
   DROP TABLE IF EXISTS `game_status`;
   
   
   CREATE TABLE `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` ENUM('W','B') DEFAULT NULL,
  `result` ENUM('W','B','D') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `game_status` WRITE;
INSERT INTO `game_status` VALUES ('started','W','D','2022-11-28 18:39:59');
UNLOCK TABLES;

DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('B','W') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`piece_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_GENERAL_CI;
 
LOCK TABLES `players` WRITE;
INSERT INTO `players` VALUES ('qqqqqq','B','8599a2efe05697622caeddae84507ee3','2022-11-28 18:16:51'),('aaaa','W','05da4297eecc648e840b6d3bfa772adc','2022-11-28 17:16:54');
UNLOCK TABLES;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_board`()
BEGIN
	REPLACE INTO board SELECT * FROM board_empty;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piece_1`(x1 tinyint,y1 tinyint,x2 tinyint,y2 tinyint)
BEGIN
	declare  p, p_color char;
	
	select  piece, piece_color into p, p_color FROM `board` WHERE X=x1 AND Y=y1;
	
	update board
	set piece=p, piece_color=p_color
	where x=x2 and y=y2;

	update game_status set p_turn=if(p_color='W','B','W');
	
    END ;;
DELIMITER ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piece_2`(x1 tinyint,y1 tinyint,x2 tinyint,y2 tinyint)
BEGIN
	declare  p, p_color char;
	
	select  piece, piece_color into p, p_color FROM `board` WHERE X=x1 AND Y=y1;
	
	update board
	set piece=p, piece_color=p_color
	where x=x2 and y=y2;
	
	UPDATE board
	SET piece=null,piece_color=null
	WHERE X=x1 AND Y=y1;
	update game_status set p_turn=if(p_color='W','B','W');
	
    END ;;
DELIMITER ;
