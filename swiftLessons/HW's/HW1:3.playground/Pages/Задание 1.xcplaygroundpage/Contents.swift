 import UIKit
import Foundation
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSccthwi9BKLxJgJRHOO6NdM_cC5QoHGAR4pVf05mnr8N2ssJQ/viewform)

//: ## Home work 3

/*:
 ### Задание 1
 1.1 Представьте, что вы владелец розничного магазина и вам необходимо закупить товар, стоимость которого варьируется от его количества. Если количество закупаемого товара меньше 10 позиций, то цена равна 1000 рублей за штуку. От 10 до 20 единиц товара будет стоить вам 800 рублей за штуку. И вы заплатите 600 рублей за единцу при единовременно покупке от 20 единиц. Создайте условие для расчета цены за еденицу товара в зависмости от его количества и подсичитайте общую сумму используя конструкцию `if-else`. Постарайтесь написать короткое и читаемое решение
 */


//: |  задание 1 из 6  |  [Далее: Задание 2](@next)

let someNumber = 11
let sumSomenumberOne = 1000 * someNumber
let sumSomenumberTwo = 800 * someNumber
let sumSomenumberThree = 600 * someNumber
let sumSomenumberFour = 600 * someNumber

if someNumber < 10 {
    print("Your order is: \(someNumber). Cost = 1000₽ per one. Sum = \(sumSomenumberOne)₽.")
} else if someNumber < 20 {
    print("Your order is: \(someNumber). Cost = 800₽ per one. Sum = \(sumSomenumberTwo)₽.")
} else if someNumber < 30 {
    print("Your order is: \(someNumber). Cost = 600₽ per one. Sum = \(sumSomenumberThree)₽.")
} else {
    print("Your order is: \(someNumber). Cost = 600₽ per one. Sum = \(sumSomenumberFour)₽.")
}



let productsQuantity = 11
var price = 0
var totalSum = 0

if productsQuantity < 10 {
price = 1000
} else if productsQuantity < 20 {
price = 800
} else {
price = 600
}
totalSum = productsQuantity * price

print ("Количество: \(productsQuantity) шт, цена: \(price) рублей, общая сумма: \(totalSum) рублей")
