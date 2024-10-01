# CLASSROOM WORK

```
import UIKit

  
//: # Урок 4. Типы коллекций


//: ## Массивы


Хранят в себе упорядоченные, но при этом не уникальные значения одного типа


// Неизменяемый массив с типом данных String
let strings = ["a", "b", "c"]
  
// Неизменяемый массив с типом данных Character
let characters: [Character] = ["a", "b", "c"]

// Пустой массив с типом Int
var integers: [Int] = []

// Присваивание данных массиву
integers = [1, 2, 3]

// Теперь наш массив имеет другие данные
integers = [4, 5, 6] 

// Добавление новых значений к уже существующим
integers += [7, 8]  

// Добавление нового значения при помощи метода append
integers.append(9)

// Добавление нового элемента по индексу
integers.insert(1, at: 0)

// Создание нового массива, путём объединения двух других массивов
var someIntegers = integers + [12, 17]

//Удаление последнего элемента из массива
someIntegers.removeLast()

//Удаление последнего элемента из массива и сохранение его в константе
let lastValueFromArray = someIntegers.removeLast()

//Результат после удаления последнего элемента
someIntegers

//Удаление первого элемента из массива и сохранение его в константе
someIntegers.removeFirst()

// Результат после удаления первого элемента
someIntegers

// Удаление значения по индексу
someIntegers.remove(at: 1)

// Результат после удаления значение по индексу
someIntegers

// Количество элементов массива
someIntegers.count

// Удаление всех элементов массива
someIntegers.removeAll()

// Обнуление массива путём присваивания ему пустого массиву
integers = []

integers = [10, 20, 40]  

// Поиск индекса, по которому храниться элемент
integers.firstIndex(of: 40)

// Замена значения по заданному индексу на новое значение
integers[2] = 30

// Результат после замены
integers


//: ### Использование логического свойства isEmpty


if !integers.isEmpty {
    integers.remove(at: 0)
}


//: ## Множества


Хранят в себе неупорядоченные, но при этом уникальные значения одного типа

// Создание множества с типом String
let strings: Set = ["a", "a", "a", "b", "c"]

// Создание пустого множества с типом Character
var characters: Set<Character> = []

// Добавление нового элемента в множество
characters.insert("b")
characters.insert("b")

// Проверка на наличие определенного элемента во множестве
characters.contains("b")

// Сортировка с использованием метода sorted() для последующей итерации по множеству
characters = ["a", "a", "a", "b", "c"]
let chars = characters.sorted(by: >)


//: ## Словари


Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа

// Словарь с типом [Int: String]
let users = [1: "Tim Cook", 2: "Taylor Swift"]

// Создание пустого словаря с типом [String: String]
var carWashQueue: [String: String] = [:]

// Наполнение словаря данными
carWashQueue = ["EO92BA": "Red Toyota", "X127MT": "Gray BMW X6"]

// Изменение значения для ключа
carWashQueue["EO92BA"] = "Red Camry"

// Изменение значения с сохранением старого значения
let oldValue = carWashQueue.updateValue("White BMW X6", forKey: "X127MT") 

// Добавление новой пары ключ-значение
carWashQueue["M566PA"] = "Green Chavralet Niva"

// Удаление значения по ключу с сохранением значения
carWashQueue.removeValue(forKey: "EO92BA") 

// возвпащение количества пар
carWashQueue.count

// удаляет всё
carWashQueue.removeAll()


//: ## Строки

  
let string = String(["H", "e", "l", "l", "o"])
	print(string)
  
string.count
string.contains("h")


//: ## For-in циклы


for counter in lower…upper {
        some code
    }
    
 
var total = 0
for number in 1...5 {
    total += number
}

print(total)
  

//: ### Итерация по массиву


let fruits = [
    "apple",
    "banana",
    "pineapple",
    "apple",
    "pear",
    "apple",
    "plum",
    "apricot",
    "apple"
]
var appleCount = 0
for fruit in fruits {
    if fruit == "apple" {
        appleCount += 1
    }
}

print("The number of apples is \(appleCount) pieces")
  

//: ### Итерация по словарю


let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animal, legCount) **in** numberOfLegs {
    print("\(animal)s have \(legCount) legs")
}

  
//: ### Итерация по тексту


let greeting = "Hello!"
for char in greeting {
    print(char)
}


//: ## While циклы


    while condition {
        some code
    }

  
var counter = 0
while counter < 5 {
    print("Counter is \(counter)")
    counter += 1
}

counter


	repeat {
        some code
    } while condition


repeat {
    print("Counter is \(counter)")
    counter += 1
} while counter < 5

counter

```