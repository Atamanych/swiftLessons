import Foundation

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */



//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)

let commandNumber = 6

switch commandNumber {
case 1...3:
    print("First Quarter")
case 4...6:
    print("Second Quarter")
case 7...9:
    print("Third Quarter")
case 10...12:
    print("Fourth Quarter")
default:
    print("Ошибка")
}
