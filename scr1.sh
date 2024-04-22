#!/bin/bash
echo "что ищем?(введите фразу)"
read text
echo "введите путь к файлу или дирректории для поиска"
read path
chmod +r $path
for directory in `ls "$path"`; do
    chmod +r "$path/$directory"
    find_text=`grep -i -n $text "$path/$directory"`
    for string in $find_text; do
        echo $path/$directory '- строка' $string
    done
done

