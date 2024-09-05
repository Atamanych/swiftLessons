import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядеть это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

var result: [String: [String]] = [
    "SalavatYulaev HC": ["3:6", "5:5", "N/A"],
    "Avangard HC": ["2:1"],
    "AkBars HC": ["3:3", "1:2"]
]
for (opponent, games) in result {
    for game in games {
        print("Game VS \(opponent): - \(game)")
    }
}

/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму переданных в нее целочисленных значений и возвращает итоговый результат. Числа можно передавать либо в массиве, либо по отдельности, на ваше усмотрение. Вызовите функцию.
 */

func summNumbers(numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}
    
let result1 = summNumbers(numbers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

print(result1)
/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */

func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

let result2 = isEven(3)
let result3 = isEven(4)
/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/

func isEvenDivisibleBy3(_ number: Int) -> Bool {
    return number % 3 == 0
}

let result4 = isEvenDivisibleBy3(12)
let result5 = isEvenDivisibleBy3(4)

/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложнить задание, то можете возвращать не сортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответствовать количеству элементов заданного интервала.
 */

func generateSortedArray(from x: Int, to y: Int) -> [Int] {
    guard x < y else { return [] }
    return Array (x...y)
}

let sortedArray = generateSortedArray(from: 1, to: 10)
print(sortedArray)


func generateShuffledArray(from x: Int, to y: Int) -> [Int] {
    guard x < y else { return [] }
    var array = Array(x...y)
    array.shuffle()
    return array
}

let shuffledArray = generateShuffledArray(from: 1, to: 10)
print(shuffledArray)

/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого выше созданную функцию
 */

func generateArray(from x: Int, to y: Int) -> [Int] {
    guard x < y else { return [] }
    return Array (x...y)
}

let oneHundredArray = generateArray(from: 1, to: 100)
print(oneHundredArray)


/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без четных чисел. Для определения фильтруемых значений используйте ранее созданную функцию из задания **3.1**.
 */

func filterArray(_ array: [Int], using condition: (Int) -> Bool) -> [Int] {
    return array.filter(condition)
}

let numbersInThisArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let evenNumbers = filterArray(numbersInThisArray) {$0 % 2 == 0 }

print(evenNumbers)
/*:
 3.6 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без чисел кратных трем. Для определения фильтруемых значений используйте ранее созданную функцию из задания **3.2**.
 */

func numbersNotAMultipleOf3(_ number: Int) -> Bool {
    return number % 3 != 0
}

let numbersNotAMultipleOf3InThisExercise = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let evenNumbersInThisExercise = filterArray(numbersNotAMultipleOf3InThisExercise) {$0 % 3 != 0 }

print(evenNumbersInThisExercise)
/*:
 3.7 Отфильтруйте массив из задания **3.4** при помощи двух последний функций.
 */

let evenNumbersInTHisExercise = filterArray(oneHundredArray) {$0 % 2 == 0 }
    print(evenNumbersInTHisExercise)
let evenNumbersInTHISExercise = filterArray(oneHundredArray) {$0 % 3 != 0 }
print(evenNumbersInTHISExercise)
