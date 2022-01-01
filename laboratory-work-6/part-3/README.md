# Лаболаторная работа №6. Часть 3.

## Вариант задачи
Составить метод root отыскания максимального отрицательного корня уравнения <img src="https://render.githubusercontent.com/render/math?math=f(x) = 0"> c точностью 0.1 В основной программе использовать метод для решения уравнений <img src="https://render.githubusercontent.com/render/math?math=-x^2+sin\frac{x}{2}=0"> <img src="https://render.githubusercontent.com/render/math?math=x^5+3x^3+x^2+1=0">. Реализовать вызов метода двумя способами: в виде передаваемого lambda-выражения и в виде блока.

**ВНИМАНИЕ:** В данной задаче используется [Wolfram Alpha API](https://products.wolframalpha.com/api/) c личным ключом, что накладывает ограничения на частоту использования. Вставьте свой ключ в *data/api_key.rb*, если это потребуется. 

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
