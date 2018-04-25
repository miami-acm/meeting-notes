CREATE TABLE Jeopardy(
	ID	INT,
	CATEGORY 	VARCHAR(100),
	PRICE 		INT,
	QUESTION 	VARCHAR(1000),
	ANSWER 		VARCHAR(1000)
);

INSERT INTO Jeopardy (ID, CATEGORY, PRICE, QUESTION, ANSWER)
VALUES 
(1, 'Code', 100, 'What is the name of the following program:\n\nprint(''Hello world!'')', 'What is Hello World!'),
(2, 'Code', 200, 'What does the following program do:\n\nfor x in range(11,21):\n\tprint(x)', 'What is printing integers from 11 to 21'),
(3, 'Code', 300, 'What does this program do:\n\nimportstatistics\n\nquiz_grades = {\n\t''Joe'': 0.90,\n\t''Steve'': 0.82,\n\t''Alli'': 0.91,\n\t''Bob'': 0.71\n}\n\nminimum_grade = min(quiz_grades.values())\naverage_grade = statistics.mean(quiz_grades.values())\n\nprint(f''Quiz 1, Minimum: {minimum_grade * 100}% Maximum: {average_grade * 100}%'')', 'What is calculating grade statistics?'),
(4, 'Code', 400, 'What does this program do:\n\ndef f(x: int):\n\treturn (x ** 2) - (2 - x) + 1\n\nprint(''X \\t Y'')\nfor x in range(-10, 10):\n\tprint(f''{x} \\t {f(x)}'')', 'What is making a table?'),
(5, 'Code', 500, 'What does this program do:\n\nfor receipt_number in range(10):\n\twith open(f''receipt {receipt_number}.txt'', ''a'') as file:\n\t\tfile.write(''Thank you for your purchase'')', 'What is appending text to text files?'),
(6, 'Modules', 100, 'This module is good for working with CSV spreadsheets.', 'What is ''csv''?'),
(7, 'Modules', 200, 'Module that is good for flying.', 'What is ''antigravity''?'),
(8, 'Modules', 300, 'This module is useful for making sure your code works like it should.', 'What is ''unittest''?'),
(9, 'Modules', 400, 'This module allows you to communicate with the OS (e.g Windows or macOS)', 'What is ''os''?'),
(10, 'Modules', 500, 'This "is the only Non-GMO HTTP library for Python, safe for human consumption."\n\nThis "allows you to send organic, grass-fed HTTP/1.1 requests,\nwithout the need for manual labor."', 'What is ''Requests''?'),
(11, 'DataTypes', 100, 'my_room = 174', 'What is ''int''?'),
(12, 'DataTypes', 200, 'name = ''John Doe''', 'What is ''str''?'),
(13, 'DataTypes', 300, 'hours_of_sleep = (\n\t7,\n\t8,\n\t6,\n\t9,\n\t4\n)', 'What is ''tuple''?'),
(14, 'DataTypes', 400, 'friends = {\n\t''Jane'',\n\t''John'',\n\t''Bill''\n}', 'What is a ''set''?'),
(15, 'DataTypes', 500, 'music_artists_to_genre = {\n\t''Ed Sheeran'': ''acoustic pop'',\n\t''Howard Shore'': ''film scores'',\n\t''Peter Hollens'': ''a capella''\n}', 'What is a ''dict''?'),
(16, 'General', 100, 'What is the file extension for python files?', 'What is ''.py''?'),
(17, 'General', 200, 'What year did Python first appear?', 'What is 1991?'),
(18, 'General', 300, 'The document where it famously states: "Beautiful is better than ugly..."', 'What is The Zen of Python?'),
(19, 'General', 400, 'This change in 2008 causes many people to update their old code.', 'What is the upgrade from Python 2 to Python 3?'),
(20, 'General', 500, 'Who is the designer of Python?', 'Who is Guido van Rossum?'),
(21, 'Facts', 100, 'Means that the same Python code works on any device.', 'What is cross platform?'),
(22, 'Facts', 200, 'Means Python code is never translated into machine-language.', 'What is an interpreted language?'),
(23, 'Facts', 300, 'The language the official Python interpreter is written in.', 'What is C?'),
(24, 'Facts', 400, 'A special Python interpreter that is written in Python.', 'What is PyPy?'),
(25, 'Facts', 500, 'Means variables can store any type of data\n\nExample:\n\nx = 5\nx = ''foo''', 'What is dynamic typing?')
;
