1) Посмотреть где я - pwd
2) Создать папку - mkdir homework_01_terminal
3) Зайти в папку - cd homework_01_terminal/
4) Создать 3 папки - mkdir folder_1 folder_2 folder_3
5) Зайти в любоую папку - cd folder_1
6) Создать 5 файлов (3 txt, 2 json) - touch file_1.txt file_2.txt file_3.txt file_4.json file_5.json
7) Создать 3 папки - mkdir folder_1_1 folder_1_2 folder_1_3
8) Вывести список содержимого папки - ls -la
9) + Открыть любой txt файл - vim file_1.txt
10) + написать туда что-нибудь, любой текст - i + "Hello, world!"
11) + сохранить и выйти - Esc + :wq + Enter
12) Выйти из папки на уровень выше - cd /d/homework_01_terminal
13) переместить любые 2 файла, которые вы создали, в любую другую папку - mv folder_1/file_1.txt folder_1/file_4.json folder_2/
14) скопировать любые 2 файла, которые вы создали, в любую другую папку - cp folder_1/file_2.txt folder_1/file_5.json folder_3/
15) Найти файл по имени - find -name file_5.json
16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает - tail -f -n 1000 folder_1/file_2.txt
17) вывести несколько первых строк из текстового файла - head -n 3 folder_1/file_2.txt
18) вывести несколько последних строк из текстового файла - tail -n 3 folder_1/file_2.txt
19) просмотреть содержимое длинного файла (команда less) изучите как она работает - less folder_1/file_2.txt
20) вывести дату и время - date
=========

Задание *
1) Отправить http запрос на сервер.
http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000 - curl http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000

2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13

- Создаем файл script.txt с содержимым:

#!/bin/bash
cd /d/script
mkdir folder_1 folder_2 folder_3
cd folder_1
touch file_1.txt file_2.txt file_3.txt file_4.json file_5.json
mkdir folder_1_1 folder_1_2 folder_1_3
mv file_1.txt file_4.json /d/script/folder_2/
ls -la

- В Git Bash делаем его исполняемым chmod +x ./myscript.txt

- Запускаем скрипт командой ./myscript.txt

- Вы великолепны!
