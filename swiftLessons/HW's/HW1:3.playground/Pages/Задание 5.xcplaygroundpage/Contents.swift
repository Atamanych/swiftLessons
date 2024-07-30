import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 
 5.2. Реализуйте ту же логику посредством if else
 
 */

//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)

import Foundation

func validRussianPhoneNumber(_ phoneNumber: String) {
    let lenght = phoneNumber.count
    let correctLenght = 12

    switch lenght {
    case let x where x > correctLenght:
        let extraChars = x - correctLenght
        print("Сократите номер на \(extraChars) символов")
        
    case let x where x < correctLenght:
        let missingChars = correctLenght - x
        print("Дополните номер на \(missingChars) символов ")
        
    case correctLenght where phoneNumber.hasPrefix("+7"):
        print("Номер российский")
        
    default:
        print("Номер неверного формата")
    }
}

validRussianPhoneNumber("+74591612345")


let phoneNumber = "+78478786689"
let russianPhoneNumberLength = 12
let russianPhoneNumberPrefix = "+7"
switch phoneNumber .count {
case russianPhoneNumberLength where phoneNumber.starts(with: russianPhoneNumberPrefix):
    print ( "Номер российский")
case ..<russianPhoneNumberLength:
    print ("Дополните строку на \(russianPhoneNumberLength - phoneNumber.count) символа(ов) ")
case (russianPhoneNumberLength + 1)...:
    print ("Сократите строку на \(phoneNumber.count - russianPhoneNumberLength) символа(ов) ")
default:
    print ("Номер не российский")
}
