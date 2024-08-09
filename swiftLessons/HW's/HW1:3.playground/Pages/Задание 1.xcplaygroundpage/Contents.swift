 import UIKit
import Foundation
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSccthwi9BKLxJgJRHOO6NdM_cC5QoHGAR4pVf05mnr8N2ssJQ/viewform)

//: ## Home work 3

/*:
 ### Задание 1
 1.1 Представьте, что вы владелец розничного магазина и вам необходимо закупить товар, стоимость которого варьируется от его количества. Если количество закупаемого товара меньше 10 позиций, то цена равна 1000 рублей за штуку. От 10 до 20 единиц товара будет стоить вам 800 рублей за штуку. И вы заплатите 600 рублей за единцу при единовременно покупке от 20 единиц. Создайте условие для расчета цены за еденицу товара в зависмости от его количества и подсичитайте общую сумму используя конструкцию `if-else`. Постарайтесь написать короткое и читаемое решение
 */


//: |  задание 1 из 7  |  [Далее: Задание 2](@next)

/// 1 option

let productsQuantity = 70
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

/// 2 option

if productsQuantity < 0 {
    price = 0
} else if (0...9).contains(productsQuantity) {
    price = 1000
} else if (10...19).contains(productsQuantity) {
    price = 800
} else {
    price = 600
}

totalSum = productsQuantity * price
print ("Количество: \(productsQuantity) шт, цена: \(price) рублей, общая сумма: (totalSum) рублей")
