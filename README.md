```markdown
# AtomSkills 2020. IT Solution for business

**Участник:** Шадурский Дмитрий Николаевич
```
База данных MS SQL

***Скрипт развёртываания:***

SQL\Create_database.sql

По умолчанию создает базу в каталоге C:\ProgramData\ при необходимости изменить в строках 10, 12 путь к файлам.

***Десктоп приложение:***

Если экземпляр сервера отличается от (LocalDb)\MSSQLLocalDB, исправить ConnectString в файле  Desktop\ASSetting.xml

Запускаемый файл Desktop\AtomSkill2020.exe

Логин по умолчанию:as@as.ru
Пароль по умолчанию:2020

Если в процессе работы утерян пароль пользователя приложения или пользователь удалён, необходимо запустить SQL\Восстановление_доступа.sql, это сбросит настройки логина и пароля к первоначальным значениям

***Веб приложение:***
-
