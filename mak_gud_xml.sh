#!/bin/bash
# правим хмл файл
# сначала меняем русский 
#sed -e 's/<Раздел/<razdel/g' short > short1
sed -e 's/<Раздел/<razdel/g' 08_IPK.xml > short1
sed -e 's/<\/Раздел/<\/razdel/g' short1 > short2
sed -e 's/<Строка/<string/g' short2 > short1
sed -e 's/<\/Строка/<\/string/g' short1 > short0
# теперь правим разделы

# первый вариант - множественные строки данных включени в раздел 2, раздел 1 отделно
#sed -e 's/<\/razdel2>//g' short0 > short1
#sed -e 's/<razdel3>//g' short1 > short2
#sed -e 's/<\/razdel3>//g' short2 > short1
#sed -e 's/<razdel4>//g' short1 > short2
## sed -e 's/<razdel2>/<razdel4>/g' short2 > short1.xml
#sed -e 's/<razdel2>/<razdel4>/g' short2 > all_ipk.xml

# второй вариант - множественные строки данных включены в раздел 2, а все вместе в раздел 1
# т.о. мы и адрес пропишем в таблицу показаний для идентификации по объекту недвижимости
sed -e 's/<\/razdel2>//g' short0 > short1
sed -e 's/<razdel3>//g' short1 > short2
sed -e 's/<\/razdel3>//g' short2 > short1
sed -e 's/<razdel4>//g' short1 > short2

sed -e 's/<\/razdel1>//g' short2 > short1

# sed -e 's/<razdel2>/<razdel4>/g' short2 > short1.xml
sed -e 's/<razdel2>/<razdel4>/g' short1 > short2
sed -e 's/<razdel5\/>/<\/razdel1>/g' short2 > all_ipk.xml
