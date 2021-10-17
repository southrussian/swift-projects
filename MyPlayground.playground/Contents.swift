import UIKit
import Foundation

//func greeting(name: String, surname: String) {
//    print("Hello,", name, surname + "!")
//}
//greeting(name: "Danil", surname: "Peregorodiev")
//
//
//let x: String? = "Hello World" // Опциональный тип данных
//
//if let y = x {
//    print(y)
//}
//print(type(of: x))
//
//var num: Int = 10
//num = 20
//
//let ten = 10
//let pi = 3.14
//let piFloat: Float = 3.14
//
//print(ten, pi, type(of: pi), piFloat, num)
//
//var myProperty = 5 {
//    willSet {
//        print("Will set to \(newValue). It was previously \(myProperty)")
//    }
//    didSet {
//        print("Did set to \(myProperty). Previosly was \(oldValue)")
//    }
//}
//myProperty = 6 // Отслеживание изменений
//
//class Dog {
//    var name = ""
//}
//let myDog = Dog()
//myDog.name = "Rex"
//print(myDog.name)
//
//class Circle {
//    var radius = 0.0
//    var circumference: Double {
//        get {
//            return pi * radius * 2
//        }
//        set {
//            radius = newValue / pi / 2
//        }
//    }
//}
//
//let circle = Circle()
//circle.radius = 1
//print(circle.circumference)
//circle.circumference = 10
//print(circle.radius)
//
//class Enemy {
//    var tank: String = "M4"
//    var tankCount: Int = 4
//}
//
//let enemy = Enemy()
//enemy.tank = "Abrams"
//enemy.tankCount = 6

//print(enemy.tankCount + 1)
//print(enemy.tank)

//let globalString = "Global"
//print(globalString)
//
//for _ in 0..<2 {
//    print(globalString)
//}
//
//struct Dog {
//    static var noise = "Bark!"
//}
//
//class Animal {
//    class var noise: String {
//        return "Animal noise!"
//    }
//}
//
//class Pig: Animal {
//    override class var noise: String {
//        return "Oink!"
//    }
//}

//let binary = -0b00101101
//print(binary)
//
//let hexadecimal = 0xF5
//print(hexadecimal)
//
//let myPhone = 89288218038
////String(myPhone, radix: 2)
//print(String(myPhone, radix: 2))
//
//// random number generation
//let flip = arc4random_uniform(8)
//print(flip)
//
//let random00s = arc4random_uniform(10) + 2000
//print(random00s)


//for count in 0...100 {
//    print(sin(1000.0 / Double(count)))
//}

//var i, j: Int
//for i in 0...10 {
//    for j in 0...2 {
//        print(i, j)
//    }
//}

//var arr: [Int] = Array(0...10)
//print(arr)
//
//for i in arr {
//    arr[i] += i
//}
//
//print(arr)
//
//for i in 0...10 {
//    arr[i] *= 2
//}
//print(arr)

//class Products {
//    var iPad: String = "Pro"
//    var iPhone: String = "13"
//    var MacBook: String = "Air"
//    var watch: String = "Series 7"
//}
//
//let product = Products()
//
//product.MacBook = "Macbook Pro 13 M1"
//func price(prod: String) {
//    if (prod == product.MacBook) {
//        print("1000$")
//    }
//    else {
//        print("Less then 1000$")
//    }
//}
//
//price(prod: product.iPhone)

//struct klasse {
//    var s: String = "S-Klasee"
//}
//let klass = klasse()
//print(klass.s)

//var a: Int = 10
//a = 11
//a += 4
//a *= 6
//
//let x = 1, y = 0, z = 1
//
//let x1: Bool = true
//let x2: Bool = false
//
//let x3 = x1 || x2
//
//for i in 1...10 {
//    print(i)
//}
//
//print()
//var u = 10
//
//while u > 0 {
//    print(u)
//    u -= 1
//}


// arrays
//
//var arr: [Int] = []
//var charArr: [String] = []
//for i in 0...12 {
//    arr.append(i)
//}
//print(arr)
//
//for _ in 0...10 {
//    charArr.append("Hello")
//}
//print(charArr)
//
//var names = ["Nicolay", "Peter", "David"]
//
//var wallet = [Int](repeating: 50, count: 5)
//print(wallet)
//
//for name in names {
//    print(name)
//}
//for index in names.indices {
//    print(index)
//}
//
//let count = wallet.count
//print(count)
//
//let binary = 0b11010000
//let binaryToDecimal = String(binary, radix: 10)
//print(binaryToDecimal)
//
//func numPat(n: Int) {
//    for i in 0...n-1 {
//        var num = 1
//        for _ in 0...i {
//            print(num, terminator: "")
//            num = num + 1
//
//        }
//        print("\r")
//    }
//}
//
//let number = 10
//numPat(n: number)
//
//if names.isEmpty {
//    print("empty")
//}
//else {
//    print("not empty")
//}

//wallet.append(100)
//wallet.append(200)
//print(wallet)
//
//wallet += [500, 1000]
//print(wallet)
//
//wallet.insert(5000, at: 3)
//print(wallet)
//
//wallet.remove(at: 5)
//print(wallet)
//
//wallet[2...4] = [200, 2000, 100]
//print(wallet)

//print(wallet.first)
//print(wallet.last)

//let last = wallet.removeLast()
//print(last)
//
//print(wallet.dropFirst())
//
//wallet.sort()
//print(wallet)
//
//let sortedArray = wallet.sorted()
//print(sortedArray)
//
//let filteredArray = wallet.filter { (item) -> Bool in
//    item == 200
//}
//print(filteredArray)

//let mapArray = wallet.map { (item) -> Int in
//    item * item
//}
//print(mapArray)
//
//if wallet.contains(400) {
//    print("yes")
//} else {
//    print("no")
//}

// dictionary
//var faceBook[String:String] = [:]
//var faceBook = [String:String]()
//var faceBook = ["nikolay":"88005553535", "dave": "89283173855"]
//faceBook["nikolay"] = "88926736737"
//faceBook["peter"] = "84593456767"
//
//if faceBook.updateValue("88926736737", forKey: "nikolay") != nil {
//    print("update")
//} else {
//    print("new")
//}
//print(faceBook["nikolay"])
//
//if let phone = faceBook["nikolay"] {
//    print(phone)
//}
//
//for key in faceBook.keys {
//    print(key)
//}
//
//for value in faceBook.values {
//    print(value)
//}
//
//for (key, value) in faceBook {
//    print(key, value)
//}

// set

//var numbers = Set<Int>()
//var num: Set = [1, 2, 3, 4, 5, 6]
//print(num)
//
//if num.insert(10).inserted {
//    print("new")
//} else {
//    print("old")
//}
//print(num)
//
//num.remove(1)
//print(num)
//
//if num.contains(5) {
//    print("contains")
//} else {
//    print("do not contains")
//}
//
//let count = num.count
//print(count)
//
//print()

//for n in num {
//    print(n)
//}
//
//print(num.sorted())
//
//let oddDigits: Set = [1, 3, 5, 7, 9, 2]
//let evenDigits: Set = [2, 4, 6, 8, 10, 7]
//
//let all = oddDigits.union(evenDigits).sorted()
//print(all)
//
//let inter = oddDigits.intersection(evenDigits).sorted()
//print(inter)
//print(type(of: inter))
//
//let sub = oddDigits.subtracting(evenDigits).sorted()
//print(sub)
//let symD = oddDigits.symmetricDifference(evenDigits).sorted()
//print(symD)
//print(type(of: symD))
//
//let testSet:Set = [89]
//
//let subSet = testSet.isSubset(of: oddDigits)
//print(type(of: subSet))
//
//print(oddDigits.isSuperset(of: testSet))
//print(oddDigits.isDisjoint(with: testSet))


// if-switch-guard

//let x = 20
//let y = 20
//if (x < y) {
//    print("x < y")
//} else if x == y {
//    print("x = y")
//}
//else {
//    print("x > y")
//}
//
//let array: [Int] = []
//
//if array.isEmpty {
//    print("empty")
//}
//
//func devide(x: Float?, y: Float) {
//    guard let x = x else {return}
//    guard y != 0 else {return}
//    let z = x / y
//    print(z)
//}
//devide(x: 4, y: 2)
//
//let mark = 1
//
//switch mark {
//case 5:
//    print("A")
//case 4:
//    print("B")
//case 3:
//    print("C")
//case 2:
//    print("D")
//default:
//    print("F")
//}
//let life = 4
//switch life {
//case 80...100:
//    print("green")
//case 50...79:
//    print("orange")
//case 20...49:
//    print("yellow")
//default:
//    print("red")
//}

// functions

//let cash: [Double] = [3432, 3432, 534, 676, 3234, 2132135, 76786, 89786]
//
//var total: Double = 0
//
//for m in cash {
//    total += m
//}
//
//print(total)
//
//var sum = cash.reduce(0, +)
//print(sum)
//
//sum -= sum * 0.5
//print(sum)
//
//func getTotalWith(_ cash: [Double], percentExpences percent: Double) -> Double {
//    var sum = cash.reduce(0, +)
//    sum -= sum * percent
//    return sum
//}
//
//let shop = getTotalWith(cash, percentExpences: 0.28)
//print(shop)

// tuples

//var name = "danil"
//var age = 20
//var height = 186
//
//var name2 = "vova"
//var age2 = 18
//var height2 = 180

//let human = (name: "danil", age: 20, height: 186)
//
//let (name, age, height) = human
//print(name)
//print(age)
//print(human.height)

//func getHuman() -> (String, Int, Double) {
//    return (name: "danil", age: 20, height: 186)
//}
//let (name, _, _) = getHuman()
//print(name)

// emum

//enum TypeDevice {
//    case laptop(mark: MarkLaptop)
//    case desktop
//    case tablet
//    case smartphone
//    case smartWatch
//    
//    }
//enum MarkLaptop: String {
//        case apple = "Apple Macbook"
//        case acer = "Acer"
//        case hp = "HP"
//    }
//
//let markLaptopAcer = MarkLaptop(rawValue: "Acer")
//print(markLaptopAcer?.rawValue)
//
//let device: TypeDevice = .laptop(mark: .apple)
//switch device {
//case .laptop(let markLaptop) where markLaptop == .apple:
//    print("Macbook")
//case .laptop(let markLaptop) where markLaptop == .acer:
//    print("Ноутбук Acer")
//case .laptop(let markLaptop) where markLaptop == .hp:
//    print("Ноутбук HP")
//case .laptop(let mark):
//    print("Ноутбук \(mark.rawValue)")
//case .desktop:
//    print("Компьютер")
//case .smartWatch:
//    print("Умные часы")
//case .smartphone:
//    print("Смартфон")
//case .tablet:
//    print("Планшет")
//}



