```
//: # Lesson 6



//: ### Вложенные функции



let items = [0, 1, 2, 3, 4, 5, 6]

func recursiveBinarySearch(for target: Int, in items: [Int]) -> Int? {
    func recursiveBinarySearch(for target: Int, in items: [Int],  firstIndex: Int, lastIndex: Int) -> Int? {
        if firstIndex > lastIndex {
            return nil
        }

        // Определяем элемент из середины массива
        let middleIndex = (firstIndex + lastIndex) / 2
        let item = items[middleIndex]
        if item == target {
            // Элемент найден
            return middleIndex
        } else if target < item {
            // Поиск по левой половние коллекции
            return recursiveBinarySearch(
                for: target,
                in: items,
                firstIndex: firstIndex,
                lastIndex: middleIndex - 1
            )
        } else {
            // Поиск по правой стороне коллекции
            return recursiveBinarySearch(
                for: target,
                in: items,
                firstIndex: middleIndex + 1,
                lastIndex: lastIndex
            )
        }
    }
    return recursiveBinarySearch(
        for: target,
        in: items,
        firstIndex: 0,
        lastIndex: items.count - 1
    )
}

recursiveBinarySearch(for: 5, in: items)
  


//: ### Функции как замыкания



//: Отбираем числа меньше заданного значения



let numbers = [5, 8, 20, 13, 1, 4, 3, 6]

    func filterLessThanValue(_ value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = [] 

    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterLessThanValue(5, numbers: numbers)



//: Отбираем числа больше заданного значения



func filterGreaterThanValue(_ value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []  

    for number in numbers {
        if number > value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterGreaterThanValue(5, numbers: numbers)

  

//: Функция для отбора чисел, относительно заданного значения

  

func filterWithPredicateClosure(value: Int, numbers: [Int], closure: (Int, Int) -> Bool) -> [Int] {
    var filterNumbers: [Int] = []
  
    for number in numbers {
        if closure(number, value) {
            filterNumbers.append(number)
        }
    }
    return filterNumbers

}


//: Функция для отбора числе меньше указанного значения

  

func isNumber(_ number: Int, lessThanValue value: Int) -> Bool {
    number < value
}

  

//: Функция для отбора числе больше указанного значения

  

func isNumber(_ number: Int, greaterThanValue value: Int) -> Bool {
    number > value
}

  

//: Отбор чисел меньше указанного значения

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: isNumber(_:lessThanValue:)
)

  

//: Отбор чисел больше указанного значения

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: isNumber(_:greaterThanValue:)
)

  

//: ### Замыкающие выражения

  

/*
 Замыкания бывают трех видов:
 - Глобальные функции — это замыканиями, у которых есть имя и которые не захватывают никакие значения.
 - Вложенные функции — это замыканиями, у которых тоже есть имя, но при этом они могут использовать или захватывать значения из родительской функции.
 - Замыкающие выражения - это безымянные функции, написанные в облегченном синтаксисе, которые могут захватывать значения из окружающего контекста
 */

  

/*:
Example

    { (параметры) -> тип результата in
        тело замыкающего выражения
    }
 */

  

//: Использование замыкания в качестве аргумента


//: Отбор чисел меньше указанного значения

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number: Int, value: Int) -> Bool in
        return number < value
    }
)

  

//: Отбор чисел больше указанного значения

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number: Int, value: Int) -> Bool in
        return number > value
    }
)

  

//: Вывод типа из контекста

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in
        return number < value
    }
)

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in
        return number > value
    }
)

  

//: Неявные возвращаемые значения из замыканий с одним выражением

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in number < value }
)

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in number > value }
)

  

//: Сокращенные имена параметров

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { $0 < $1 }
)

  

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { $0 > $1 }
)

  

//: Последующее замыкание

  

filterWithPredicateClosure(value: 5, numbers: numbers) { $0 < $1 }
filterWithPredicateClosure(value: 5, numbers: numbers) { $0 > $1 }

  

//: Операторные функции

  

filterWithPredicateClosure(value: 5, numbers: numbers, closure: <)
filterWithPredicateClosure(value: 5, numbers: numbers, closure: >)

  

//: Свойства с типом замыкающих выражений

  

let completion: (Int, Int) -> Int = {
    $0 + $1
}

completion(7, 9)

  

//: Захват значений

  

var numberOne = 3
var numberTwo = 5

let closure: () -> Int = { [numberOne, numberTwo] in
    numberOne + numberTwo
}

closure()

numberOne = 10
numberTwo = 7

closure()
  

