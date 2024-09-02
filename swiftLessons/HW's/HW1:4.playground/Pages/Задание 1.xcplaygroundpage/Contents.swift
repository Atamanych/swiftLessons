//: |  задание 1 из 7  |  [Далее: Задание 2](@next)

//: [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSd1u0QO7NUHombGhJkB0r0o8rsfGvUuVJmMbfWd-2nCbhOaAA/viewform)
//: ## Home Work 4
/*:
 ### Задание 1
 1.1 Пользователь открывает вклад (deposit) в банке на 5 лет на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия (period) вклада.  Для решения данной задачи используйет цикл for-in. Примечание: сумма вклада увеличивается с каждым годом и процент нужно считать уже от увелеченной суммы.
 1.2 Выведите результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...>"
 */

/// 1 option

import UIKit
import Foundation

// Исходные данные
let initialDeposit: Double = 500000  // начальная сумма вклада в рублях
let rate: Double = 0.11  // процентная ставка годовых
let period: Int = 5  // срок вклада в годах

// Переменные для хранения текущей суммы вклада и дохода
var currentDeposit: Double = initialDeposit
var profit: Double = 0

// Цикл для расчета дохода по годам
for year in 1...period {
    let annualProfit = currentDeposit * rate  // доход за текущий год
    currentDeposit += annualProfit  // обновляем сумму вклада
    profit += annualProfit  // суммируем общий доход
    
    // Выводим результат на консоль
    print(String(format: "Сумма вклада через %d лет увеличится на %.2f и составит %.2f", year, annualProfit, currentDeposit))
}

// Общий доход за весь период
print(String(format: "Общий доход за %d лет составит %.2f", period, profit))



/// 2 option


var deposit2 = 500000.0
let rate2 = 0.11
let period2 = 5
var profit2 = 0.0
for _ in 1...period2 {
    let currentProfit2 = deposit2 * rate2
    profit2 += currentProfit2
    deposit2 += currentProfit2
}

print("Сумма вклада через \(period2) лет увеличится на \(profit2.rounded()) рубля и составит \(deposit2.rounded())")


