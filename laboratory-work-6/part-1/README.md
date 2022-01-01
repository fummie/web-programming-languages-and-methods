# Лаболаторная работа №6. Часть 1.

## Вариант задачи
Решить задачу, организовав итерационный цикл. Вычислить длину окружности с точностью <img src="https://render.githubusercontent.com/render/math?math=\epsilon=10^{-3}, 10^{-4}"> как предел последовательности периметров вписанных правильных многоугольников с удваивающимся числом сторон (начать с <img src="https://render.githubusercontent.com/render/math?math=n=6">). Использовать формулу удвоения стороны n-угольника: <img src="https://render.githubusercontent.com/render/math?math=a_{2n}=\sqrt{2R^2-2R\sqrt{R^2-{a_n}^2/4}}">

## Инициализация проекта
1. Установка зависимостей
```bash
bundle config set --local path 'vendor/bundle'
bundle install
```
2. Запуск тестов
```bash
bundle binstubs rspec-core
bin/rspec
```
3. Запуск проекта
```bash
ruby lib/main.rb
```
