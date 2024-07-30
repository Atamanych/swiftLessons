import UIKit
import Foundation

//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

var results: [String: [String]] = [
    "Spartak FC": ["Victory 3:2", "Loss 1:4", "Draw 2:2"],
    "Zenit FC": ["Victory 5:3", "Victory 2:1"],
    "Metallurg FC": ["Loss 0:3", "Loss 2:5"],
    "Tankograd FC": ["Draw 1:1", "Victory 4:2", "Loss 2:3"]
]
for (opponent, games) in results {
    print("Games VS \(opponent):")
    for game in games {
        print(" - \(game)")
    }
}
/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */

func fullAge(dayOfBirth: Int, monthOfBirth: Int, yearOfBirth: Int,
             dayToday: Int, monthToday: Int, yearToday: Int) -> (years: Int, months: Int, days: Int) {
    
    var myFullLivedYears = yearToday - yearOfBirth
    var myFullLivedMonths = monthToday - monthOfBirth
    var myFullLivedDays = dayToday - dayOfBirth
    
    if myFullLivedDays < 0 {
            myFullLivedMonths -= 1
            myFullLivedDays += 30
        }
        
        if myFullLivedMonths < 0 {
            myFullLivedYears -= 1
            myFullLivedMonths += 12
        }
        
        return (myFullLivedYears, myFullLivedMonths, myFullLivedDays)
    }

let (years, months, days) = fullAge(dayOfBirth: 4, monthOfBirth: 12, yearOfBirth: 1992,
                                    dayToday: 4, monthToday: 6, yearToday: 2024)

print("I lived \(years) years; \(months) months; \(days) days")
/*:
 
 
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */

func moneyInWallet(rubles50: Int, rubles100: Int, rubles500: Int,
                   rubles1000: Int, rubles5000: Int) -> Int {
    let totalRubles50 = rubles50 * 50
    let totalRubles100 = rubles100 * 100
    let totalRubles500 = rubles500 * 500
    let totalRubles1000 = rubles1000 * 1000
    let totalRubles5000 = rubles5000 * 5000

    let sumMoneyInWallet = totalRubles50 + totalRubles100 + totalRubles500 + totalRubles1000 + totalRubles5000
    
    return sumMoneyInWallet
}

let sumMoneyInWallet = moneyInWallet(rubles50: 40, rubles100: 23, rubles500: 1, rubles1000: 54, rubles5000: 6)
print("Sum money in wallet: \(sumMoneyInWallet) rubles")

    
//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму



/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */



/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/



/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */


/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */



/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */


/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1905, функция возвратит 20. Для 1899 возвратит 19
 */


/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */
