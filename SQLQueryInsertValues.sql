USE company

INSERT INTO employee(id, first_name, last_name, position_id, project_id) 
VALUES 
  (1, 'serhii', 'mykhoilov', 510, 1), 
  (2,  'petr', 'ivanov', 510,2), 
  (3,  'syvyatoslav', 'podgomiy', 530 ,1 ), 
  (4,  'yana', 'sukharieva',520, 1 ), 
  (5,  'anna', 'samoneko', 500, 1 );

INSERT INTO position (id, name, rate) 
VALUES 
  (1, 'dev', 500), 
  (2, 'qa auto', 510), 
  (3, 'qa manual', 520),
  (4, 'project manager', 530);
    
INSERT INTO project (id, name, max_sum_rate) 
VALUES 
  (1, 'usa medical', 2000), 
  (2, 'qa erp kyiv', 50); 

INSERT INTO equipment (id, name, price, user_id) 
VALUES 
	(1, 'laptop hp', 1000, 1), 
	(2, 'laptop hp', 1000, 3), 
	(3, 'laptop lenovo', 800, 2),
	(4, 'pc', 300, NULL),
	(5, 'laptop dell', 150, 5),
   (6, 'monitor', 80, 6),
   (7, 'monitor', 85, 3),
   (8, 'pc', 450, 6);



