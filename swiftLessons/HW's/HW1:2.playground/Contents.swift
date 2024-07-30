import Foundation

// ЗАДАНИЕ 1

let numberOne = 3.14
let numberTwo = 42.0
let numberThree: Double = Double(Float(numberOne + numberTwo))
print("result = \(numberThree)")


//ЗАДАНИЕ 2

let numberOne1 = 10
let numberTwo2 = 3
let resultDivision = numberOne1 / numberTwo2
let remainder = (numberOne1 % numberTwo2)
print("При делении \(numberOne1) на \(numberTwo2) результат равен \(resultDivision), остаток равен \(remainder).")
print("Результат деления \(numberOne1) на \(numberTwo2) равен \(resultDivision) \(remainder)/\(numberTwo2).")


ЗАДАНИЕ 3

let monthInOneYear = 12
let daysInOneMonth = 30
let hoursInOneDay = 24
let minutesInOneHour = 60
let secondsInOneMinute = 60

let myDayOfBirth = 4
let myMonthOfBirth = 12
let myYearOfBirth = 1992

var dayToday = 7
var monthToday = 7
var yearToday = 2024
var hoursNow = 0
var minutesNow = 0
var secondsNow = 0

var livedYears = yearToday - myYearOfBirth - 1
var liveMonths = livedYears * monthInOneYear + monthToday
var livedDays = liveMonths * daysInOneMonth + dayToday
var livedHours = livedDays * hoursInOneDay + hoursNow
var livedsMinutes = livedHours * minutesInOneHour + minutesNow
var livedSeconds = livedsMinutes * secondsInOneMinute + secondsNow

print("I lived \(livedYears) years; \(liveMonths) months; \(livedDays) days; \(livedHours) hours; \(livedsMinutes) minutes; and \(livedSeconds) seconds - have passed since my birth)")


///let yearQuarters = 1...12

let firstQuarter = 1...3
let secondQuarter = 4...6

//if range.contains(number)
//if case 18...35 = age

let month = 5

if firstQuarter.contains(month) {
    print("First Quarter")
}

if case secondQuarter = month {
    print("Second Quarter")
}

if month >= 7 && month <= 9 {
    print("Third Quarter")
}
if month >= 10 && month <= 12 {
    print("Fourth Quarter")
}
if month <= 0 || month >= 13 {
    print("ошибка")
}

// ЗАДАНИЕ 4 (ДЕПОЗИТНЫЙ КАЛЬКУЛЯТОР)

var interestRate: Float = 14.7
var deposit = 221456
var depositTime = 5
let payoutPercentage = interestRate * Float (depositTime)
let paymentAmount = (interestRate / 100) * Float (deposit) * Float (depositTime)
print("Выплата по депозиту суммой \(deposit) (ставка \(interestRate)%) через \(depositTime) лет будет \(payoutPercentage)% и равна \(paymentAmount) рубл.")
