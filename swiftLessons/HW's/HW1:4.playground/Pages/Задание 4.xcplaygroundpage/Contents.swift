//: [Ранее: Задание 3](@previous)  |  задание 4 из 7  |  [Далее: Задание 5](@next)

/*:
 ### Задание 3

 Создайте цикл с интервалом от 1 до 10 в котором случайным образом должно вычисляться число в пределах от 1 до 10. Если выпадет число 5, выведите на консоль сообщение с номером итерации и остановите цикл. Пример сообщения: "Что бы выпало число 5 понадобилось <...› итераций".
 Для остановки цикла используйте оператор break. Данный оператор предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.
 Для определения случайного числа используйте функцию random: Int. random ( 1. .. 10)
 */





for iteration in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5 {
            print("Чтобы выпало число 5 понадобилось \(iteration) интераций")
            break
    }
}
