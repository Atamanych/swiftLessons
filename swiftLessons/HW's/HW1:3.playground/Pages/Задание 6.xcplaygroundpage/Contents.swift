import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */

//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |




import Foundation

// Определение перечисления CalculationType с четырьмя случаями и rawValue для каждого случая
enum CalculationType: String {
    case addition = "сложение"
    case subtraction = "вычитание"
    case multiplication = "умножение"
    case division = "деление"
}

let numberOne: Double = 7
let numberTwo: Double = 79
let calculationType: CalculationType = .addition

var result = numberOne

switch calculationType {
case .addition:
    result += numberTwo
case .subtraction:
    result -= numberTwo
case .multiplication:
    result *= numberTwo
case .division:
    numberTwo != 0 ? result /= numberTwo : print("На ноль делить нельзя")
}

print("Результат \(calculationType.rawValue) \(numberOne) и \(numberTwo) равен \(result)")
