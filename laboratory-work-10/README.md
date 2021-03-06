# Лаболаторная работа №10.

## Вариант задачи
Модифицировать код ЛР 8 таким образом, чтобы по запросу с указанными параметрами выдавался результат в формате XML (средствами стандартной сериализации ActiveSupport).

1. Проверить формирование XML и сохранить в файл для отладки XSLT и второго приложения.

2. Написать функциональный тест, проверяющий формат выдаваемых данных при запросе RSS.

3. Разработать XSLT-программу преобразования полученной XML в HTML.

4. Добавить в проверяемый XML-файл строку привязки к преобразованию <?xml-stylesheet type="text/xsl" href="some_transformer.xslt"?>. Проверить корректность отображения браузером результата преобразования.

5. Проверить на автономной Ruby-программе корректность преобразования, используя следующий фрагмент кода:
```
require 'nokogiri'
doc = Nokogiri::XML(File.read('some_file.xml'))
xslt = Nokogiri::XSLT(File.read('some_transformer.xslt'))
puts xslt.transform(doc)
```

Разработать второе приложение, являющееся посредником между клиентом и первым приложением, задачей которого является преобразование XML в HTML или передача в неизменном виде браузеру для отображения браузером. Приложение должно запускаться с указанием номера порта TCP, отличным от номера порта первого приложения (например rails server -p 3001)!

1. Подготовить каркас приложения, а также форму формирования запроса, форму отображения результата и соответствующие действия контролера.

2. Добавить в контроллер преобразование XML в HTML с помощью ранее разработанного XSLT-файла.

3. Написать функциональный тест, проверяющий что при различных входных данных результат генерируемой страницы различен.

4. Доработать код контроллера и представлений данного приложения для выдачи браузеру XML-потока в неизменном виде (организовать возможность выбора формата выдачи для пользователя).

5. Проверить, что браузер получает XML первого приложения в неизменном виде.

6. Доработать код контроллера приложения таким образом, чтобы XML-поток первого приложения получал дополнительную строку, указывающую xsl. Модифицировать форму запроса параметров таким образом, чтобы браузер получал в ответ XML. При этом разместить XSLT-файл в директории public.

7. Проверить, что браузер производит преобразование XML->HTML в соответствии с xlt.

8. Реализовать функциональные тесты второго приложения. Проверить результаты, формируемые приложением, на соответствие выбранному формату выдачи.

9. Итоговая форма ввода параметра должна содержать кнопки или селектор, позволяющие проверить два варианта преобразования:

10. Серверное xml+xslt->html
Клиентское xml+xslt->html
## Инициализация проекта ```cd part-1``` ```cd part-2```
1. Для установки гемов локально (необязательно):

    ```bash
    bundle config set --local path 'vendor/bundle'
    ```
2. Установить гемы

    ```bash
    bundle install
    ```
3. Инициализировать webpacker

    ```bash
    rails webpacker:install
    ```
## Запуски
1. Запуск Проекта

    ```bash
    rails server <порт>
    
    ```
2. Запуск Rubocop

    ```bash
    bundle exec rubocop
    ```
3. Запуск Reek

    ```bash
    bundle exec reek
    ```
## Аналог
```bundle exec <команда>``` можно заменить на ```bin/<команда>```, если предварительно сделать ```bundle binstubs <команда>```, и на ```<команда>```, если гем установлен не локально.s
