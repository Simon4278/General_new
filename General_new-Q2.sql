/*create a table of menu1, which including 
  a menu id, menu name, 2 ingredients and 
  2 instructions of cooking this menu. "menu_id"
  is chosen to be primary key and foreign key
  because it is special enough to tell menus from
  each other, "menu_name" is chosen to be UNIQUE KEY
  because it is easier for user to search
  
  "menu_id" is created to store the id of
  each menu in order to distinguish them easily.
  
  "menu_name" is created to store the name of 
  each menu to make it is easier for users to 
  search and remember the menu.alter
  
  "ingredient_1" and "ingredient_2" are used to 
  store the ingredients of menu1
  
  "instruction_" and "ingredient_2" are used to 
  store the instructions to cook menu1.
 */;
CREATE TABLE ` menu1`(
	` menu_id`  INT(10) NOT NULL AUTO_INCREMENT,
    ` menu_name`  VARCHAR(255) NOT NULL,
    ` ingredient_1`  VARCHAR(255) NOT NULL,
    ` ingredient_2`  VARCHAR(255),
    ` instruction_1`  TEXT NOT NULL,
    ` instruction_2`  TEXT,
    PRIMARY KEY (` menu_id` ),
    UNIQUE KEY (` menu_name` ),
    FOREIGN KEY (`menu_id`) REFERENCES `menu_ID` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
/*create a table of menus, which including 
  the suitable season for the different seasons,
  id and name of each menu. "menu_id" is chosen
  be the primary key and foreign key because it
  is special enough.

*/    

CREATE TABLE `menus`(
	`menus_season` INT(4) NOT NULL,
	`menu_id`  INT(10) NOT NULL,
    `menu_name` varchar(255),
	PRIMARY KEY (` menu_id` ),
    FOREIGN KEY (`menu_id`) REFERENCES `menu_ID` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
	ENGINE=InnoDB DEFAULT CHARSET=utf8;
