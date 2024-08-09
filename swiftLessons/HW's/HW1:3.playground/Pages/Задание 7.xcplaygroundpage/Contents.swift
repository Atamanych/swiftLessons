/*:
 ## отсортировать конфеты M&M's
 >С помощью блоков case определяются возможны значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова where в блоке case.

В этом задании вам необходимо отсортировать конфеты M&M's по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку соберите все желтые конфеты с орехами. А в третью кучку коричневые с шоколадом и зеленые с шоколадом. Нужно реализовать только логику для сортировки конфет. Использовать кортежи при этом не нужно.
 */
//: [Ранее: Задание 6](@previous)  |  задание 7 из 7


let color = "Brown"
var filling = "Chocolate"

switch color {
case "Red" where filling == "Chocolate":
    print("Положите эти конфеты в первую кучку")
case "Yellow" where filling == "Nut":
    print ("Положите эти конфеты во вторую кучку")
case "Brown" where filling == "Chocolate",
    "Green" where filling == "Chocolate":
    print ( "Положите эти конфеты в третью кучку")
default:
    break
}

