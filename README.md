# Проектирование систем на кристалле <br> Лабораторная работа №1

## Задание

Задание представляет собой простую задачу на обработку двумерного массива. Непосредственную обработку массива необходимо реализовать в виде отдельной функции с необходимыми аргументами.

Необходимо реализовать алгоритм на языке ассемблера RISCV ISA и на языке программирования Си. Скомпилировать программу на языке Си и получить `.dump` файл. Результат работы ассемблерной программы продемонстрировать в симуляторе Venus.

Вариант | Задание |   N   |   M   | Передача параметров
:-----: |:-------------- | :---: | :---: | :------------------
10 | Найти сумму главных диагоналей <br> массива | 4 | 4 | Размер: по значению <br> Массив: по ссылке

## Результаты работы

Программа на языке ассемблера: [lr1.S](src/lr1.s)  
Программа на языке Си: [lr1.c](src/lr1.c)  
Дамп-файл программы на Си: [lr1.dump](results/lr.dump)  

## Тестирование
Тестирование программы на языке Си производилось с помощью симулятора `riscv64-unknown-elf-run`. Тестирование ассемблерной программы выполнялось с помощью расширения `RISC-V Venus Simulator` для VSCode.

<details><summary>Результат тестирования программы на языке Си</summary>
<p>

```
5 74 5 64 34 7
6 65 4 41 44 5
9 41 1 85 31 1
7 96 9 46 54 8
7 96 9 11 81 3
4 27 1 73 10 9

207 

245 
```

</p>
</details>

<details><summary>Результат тестирования программы на языке ассемблера</summary>
<p>

```
-------------------------------------------------------------------------------------------
207 245 Exited with error code 0
Stop program execution!
-------------------------------------------------------------------------------------------
```

</p>
</details>
