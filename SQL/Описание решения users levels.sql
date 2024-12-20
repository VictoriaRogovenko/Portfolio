Задания на написание запросов к БД:	SQL-код																								
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а	
SELECT user_name FROM users where level_id=1 AND skill > 799000 AND user_name like '%a%';																								
2. Удалить всех пользователей, у которых skill меньше 100000	
  DELETE from users where skill < 100000;																								
3. Вывести все данные из таблицы user в порядке убывания по полю skill	"SELECT * FROM users
ORDER BY skill DESC;"																								
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10	INSERT INTO users values (default,'Oleg', 4, 10);																								
5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000	"update users
SET skill = 2000000
WHERE level_id < 2;"																								
6. Выбрать user_name всех пользователей уровня admin используя подзапрос	SELECT user_name from users where level_id = (SELECT id from levels where level_name = 'admin');																								
7. Выбрать user_name всех пользователей уровня admin используя join	SELECT users.user_name from users JOIN levels ON users.level_id = levels.id WHERE levels.level_name = 'admin';																								
