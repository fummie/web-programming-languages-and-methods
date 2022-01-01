# Лаболаторная работа №7. Часть 2.

## Вариант задачи
Разработать и реализовать иерархию классов для описанных объектов предметной области, используя механизмы наследования. Проверить ее на тестовом примере, с демонстрацией всех возможностей разработанных классов на конкретных данных.

Объект символ, умеющий выводить на экран свое значение и отвечать на запрос о значении своего символьного поля и числовом коде символа. 

Объект символ. Параметры: код и шрифт. Объект должен уметь выводить на экран свое значение, отвечать на запрос о значении своего символьного поля, числовом коде символа и шрифте.

В тестирующей программе обеспечить автоматическую проверку того, что созданные объекты действительно соответствют заданной иерархии классов.
## Инициализация проекта
1. Для установки гемов локально (необязательно):

    ```bash
    bundle config set --local path 'vendor/bundle'
    ```
    
2. Установить гемы

    ```bash
    bundle install
    ```
3. Инициализировать Rspec

    ```bash
    bundle exec rspec --init
    ```
## Запуски
1. Запуск проекта

    ```bash
    ruby lib/main.rb
    ```

2. Запуск конкретного теста Rspec

    ```bash
    bundle exec rspec spec/<name_spec.rb>
    ```
3. Запуск всех тестов Rspec

    ```bash
    bundle exec rspec spec
    ```
4. Запуск Rubocop

    ```bash
    bundle exec rubocop
    ```
5. Запуск Reek

    ```bash
    bundle exec reek
    ```
## Аналог
```bundle exec <команда>``` можно заменить на ```bin/<команда>```, если предварительно сделать ```bundle binstubs <команда>```, и на ```<команда>```, если гем установлен не локально.