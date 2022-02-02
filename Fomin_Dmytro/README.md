DevOps-CC21
==============

Домашні завдання по курсу DevOps-CC21 - <a href="mailto:fomindn@gmail.com" title="fomindn@gmail.com">Fomin Dmytro</a>

## Зміст
+ [Загальний опис](#ZagOpys);
+ [Завдання 1 - Docker](#Docker);
+ [Завдання 2 - Jenkins](#Jenkins);
+ [Завдання 3 - Kubernetes](#Kubernetes);
+ [Завдання 4 - Terraform](#Terraform).

## <a name="ZagOpys"></a>Загальний опис

При виконанні домашніх робіт з курсу DevOps Crash course була розроблена структура ка талогів - для кожного завдання окрема директорія та відповідно своя гілка Git:

 + 01.Docker     , t01-docker
 + 02.Jenkins    , t02-jenkins
 + 03.Kubernetes , t03-kubernetes
 + 04.Terraform  , t04-terraform

Така організація коду проекту дозволяє чітко відслідковувати в якому саме завданні були виконанні зміни та залиті в GitHub репозиторій, після якого спрацьовує webhook, який викликає необхідну послідовність дій для даного завдання.
Основною гілкою для даного проекту є 'dev' і в неї відбувається повне злиття коду із усіх гілок підзадач. Тому повний код проекту можливо продивитись виключно в даній гілці.
Для відновлення корректної роботи проекту після злиття з іншими репозиторіями, необхідно відновити всі необхідні гілки Git для підзадач і чітко вносити зміни у відповідній гілці.

## <a name="Docker"></a>Завдання 1 - Docker
----------------------------------------------

Для корректної роботи коду першого завдання, попередньо необхідно створити папку "01.Docker/.env/", а в ній створити три файли зі змінними оточення:
#### joomla.env
```
JOOMLA_DB_NAME=<data base name>
JOOMLA_DB_USER=<data base user name>
JOOMLA_DB_PASSWORD=<data base user password>
```
#### mysql.env
```
MYSQL_ROOT_PASSWORD=<data base ROOT user password>
MYSQL_USER=<data base user name>
MYSQL_PASSWORD=<data base user password>
```
#### pma.env
```
MYSQL_ROOT_PASSWORD=<data base ROOT user password>
```
Папка "HowTo" слугує записником як виконанувався проект та містить файли по підзадачах. Файли оформленні у вигляді bash-скриптів, тому команди з файлів .howto можна виконувати у терміналі.

Файл bash-скрипт joomla-docker.sh  слугує для зручного та швидкого виконання дій (Build, Up, Down) над контейнерами (mysql-db, pma, joomla) докер проекту web-сервера з CMS Joomla з використанням файлу joomla-docker-compose.yml

## <a name="Jenkins"></a>Завдання 2 - Jenkins
----------------------------------------------

## <a name="Kubernetes"></a>Завдання 3 - Kubernetes
----------------------------------------------------

## <a name="Terraform"></a>Завдання 4 - Terraform
--------------------------------------------------


 
