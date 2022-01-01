# Лаболаторная работа №6. Часть 2.

## Вариант задачи
Решить предыдущее задание с помощью Enumerable или Enumerator.

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
3. Запуск Rubocop
```bash
bundle binstubs rubocop
bin/rubocop
```
4. Запуск Reek
```bash
bundle binstubs reek
bin/reek
```
5. Запуск проекта
```bash
ruby lib/main.rb
```
