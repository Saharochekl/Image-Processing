# Исходные изображения

Учебные файлы лежат в `data/`, исходные версии — в `data/originals/`.
Адреса файлов и SHA-256 исходников записаны в `sources.json`.

| Учебный файл | Исходник | Подготовка |
|---|---|---|
| `scene.jpg`, `scene.gif` | `chelsea.png` | Запись RGB в JPEG с качеством 95 и в палитровый GIF |
| `text_scan_1.png` | `phototest.tif` | Сканы Tesseract; перевод в L, уменьшение 640×480 → 512×384, Lanczos |
| `text_scan_2.png` | `eurotext.tif` | Сканы Tesseract; перевод в L, уменьшение 1024×800 → 800×625, Lanczos |
| `text_scan_3.png` | `8087_054.3G.tif` | Фрагмент скана журнала: уровни 0/17 → 0/255; область (260, 580, 2270, 980); уменьшение до 1005×200, Lanczos |
| `text_photo_1.jpg` | `Test016.jpg` | Реальная фотография страницы с тенью; перевод в L, JPEG 98 |
| `text_photo_2.jpg` | `Test023.jpg` | Реальная фотография словаря с тенями; перевод в L, JPEG 98 |
| `geometry.png` | Синтетический тест | NumPy: сетка, круг, прямоугольник и диагональ на поле 300×300 |

Три скана в источнике имеют двухуровневую палитру. Уменьшение формирует
серые пиксели на границах букв. Для третьего документа взята верхняя текстовая область страницы.
Подготовка данных использует Pillow; алгоритмы заданий реализованы на NumPy.


Фотографии документов: [Optical Shadow Removal, Natural group](https://github.com/BingshuCV/DocumentShadowRemoval).
Wang, B.; Chen, C. L. (2020). *Local Water-Filling Algorithm for Shadow Detection
and Removal of Document Images*. Sensors, 20(23), 6929.
[Статья](https://doi.org/10.3390/s20236929).


## Здание для работы №11

`building.jpg` — фасад Дворца дожей в Венеции, окна и аркады.
Автор: kallerna, 11 декабря 2024 года.
[Страница фотографии](https://commons.wikimedia.org/wiki/File:Doge%27s_Palace_Venice_sea_facade.jpg).

Загруженная версия 960×640 сохранена в `originals/doges_palace_960.jpg`.
Учебная версия уменьшена до 720×480 методом Lanczos и сохранена как JPEG 95.
В ноутбуке яркость вычисляется из RGB по BT.601.
