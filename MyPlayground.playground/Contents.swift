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
//String(myPhone, radix: 2)
//print(String(myPhone, radix: 2))
//
// random number generation
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

// classes

//enum Color: String{
//    case white
//    case black
//    case gray
//    case blue
//    case red
//    case green
//}
//
//class Transport {
//    let year: Int
//    var color: Color = .black
//    let numberOfSeats: Int
//
//    func move() {
//        print("Moving")
//    }
//
//    init(year: Int, numberOfSeats: Int) {
//        self.year = year
//        self.numberOfSeats = numberOfSeats
//
//    }
//}
//
//let transport = Transport(year: 2008, numberOfSeats: 7)
//print(transport.color.rawValue)
//
//transport.color = .green
//
//class Car: Transport {
//    var vin: String
//    var stateNum: String?
//    var music: Bool = false
//
//    init(vin: String, year: Int, numberOfSeats: Int) {
//        self.vin = vin
//        super.init(year: year, numberOfSeats: numberOfSeats)
//    }
//    override func move() {
//        print("Moving on a road")
//    }
//    func sound() {
//        print("!!!")
//    }
//}
//
//let car = Car(vin: "sfsjkdfgadsjkfsdjkf", year: 2004, numberOfSeats: 4)
//transport.move()
//car.move()
//car.sound()

// Structures

//struct Car {
//    let numberOfSeats: Int
//    let year: Int
//    var milleage: Int
//    var isCrash: Bool = false
//
//    mutating func crash() {
//        print("Crashed")
//        self.isCrash = true
//    }
//}
//
//class CarClass {
//    let numberOfSeats: Int
//    let year: Int
//    var milleage: Int
//    var isCrash: Bool = false
//
//    init(numberOfSeats: Int, year: Int, milleage: Int) {
//        self.numberOfSeats = numberOfSeats
//        self.year = year
//        self.milleage = milleage
//    }
//}
//
//var car = Car(numberOfSeats: 4, year: 2021, milleage: 0)
//car.milleage = 1000
//
//var car2 = car
//car.milleage = 2000

//print(car.milleage)
//print(car2.milleage)

//let carClass = CarClass(numberOfSeats: 4, year: 2020, milleage: 0)
//carClass.milleage = 5000
//let carClass2 = carClass
//print(carClass.milleage)
////print(carClass2.milleage)
//
//func changeMillieage(car: CarClass, newMillieage: Int) {
//    car.milleage = newMillieage
//}
//func changeMillieage(car: Car, newMillieage: Int) -> Car{
//    var carInside = car
//    carInside.milleage = newMillieage
//    return carInside
//}

//changeMillieage(car: carClass, newMillieage: 400)
//print(carClass.milleage)

//car = changeMillieage(car: car, newMillieage: 6000)
//print(car.milleage)
// стркутуры не имеют наследования

// Closures

//var operation: (Double, Double) -> Double
//func plus(a1: Double, a2: Double) -> Double {
//    return a1 + a2
//}
//func minus(a1: Double, a2: Double) -> Double {
//    return a1 - a2
//}
//func multiply(a1: Double, a2: Double) -> Double {
//    return a1 * a2
//}
//func div(a1: Double, a2: Double) -> Double {
//    return a1 / a2
//}
//
//operation = plus
//
//let res = operation(10, 5)
//print(res)
//
//let shops:[String:Double] = ["Shop1":21000, "Shop2":24000, "Shop3":81000, "Shop4":20000, "Shop5":91000, ]
//
//func filterShops(shops: [String:Double], filter: (Double) -> Bool) -> [String:Double] {
//    var filteredShops = [String:Double]()
//    for (key, value) in shops {
//        if filter(value) {
//            filteredShops[key] = value
//        }
//    }
//    return filteredShops
//}
//
//func lowProfit(p: Double) -> Bool {
//    if p < 25000 {
//        return true
//    }
//    return false
//}
//func highProfit(p: Double) -> Bool {
//    if p > 25000 {
//        return true
//    }
//    return false
//}
//
//let shopsLowProfit = filterShops(shops: shops, filter: lowProfit(p:))
//let shopsHighProfit = filterShops(shops: shops, filter: highProfit(p:))
//
//
//print(shopsHighProfit)
//
//let shopsLowProfit = filterShops(shops: shops) { $0 < 25000 }
//print(shopsLowProfit)
//
//var count = 0
//print(count)
//
//func requestData(success: (_ result: Int)->(), error: (_ text: String) -> ()) {
//    let response = true
//    if response {
//        success(10)
//    } else {
//        error("error")
//    }
//}
//requestData { result in
//    print(count)
//    count += 1
//    print(result)
//    print(count)
//} error: { text in
//    print(text)
//}
//
//var digits = [56, 78, 34, 90, 84, 23, 61]
//digits.sort(by:<)
//print(digits)

// Приведние типов

//class Human {
//    var name: String
//
//    func talk() {
//        print("\(name) говорит")
//    }
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Student: Human {
//    var university: String
//
//    func study() {
//        print("Я люблю учиться в \(university)")
//    }
//    init(name: String, university: String) {
//        self.university = university
//        super.init(name: name)
//    }
//}
//
//class Worker: Human {
//    var company: String
//
//    func work() {
//        print("Я люблю работать в \(company)")
//    }
//    init(name: String, company: String) {
//        self.company = company
//        super.init(name: name)
//    }
//}
//
//class Child: Human {
//    var hero: String
//
//    func play() {
//        print("Я люблю играть в \(hero)")
//    }
//    init(name: String, hero: String) {
//        self.hero = hero
//        super.init(name: name)
//    }
//}

//let student1 = Student(name: "Николай", university: "ИТМО")
//let student2 = Student(name: "Алексей", university: "СПбГУ")
//
//let worker1 = Worker(name: "Александр", company: "ЕПАМ")
//let worker2 = Worker(name: "Алена", company: "cern")

//let child1 = Child(name: "Артем", hero: "Веном")
//let child2 = Child(name: "Коля", hero: "Воитель")
//
//let arrayPeople = [student1, student2, worker1, worker2, child1, child2]
//
//for people in arrayPeople {
//    people.talk()
//
//    if people is Student {
//        let student = people as! Student
//        student.study()
//    } else if people is Worker {
//        let worker = people as! Worker
//        worker.work()
//    } else if people is Child {
//        let child = people as! Child
//        child.play()
//    }
//}

//struct Car {
//    static var count: Int = 0
//    static func getNumberCars()->Int{
//        return Car.count
//    }
//    var mark: String
//    var model: String
//    var year: Int {
//        willSet {
//            print("OldValue - \(self.year)")
//            print("NewValue - \(newValue)")
//        }
//        didSet {
//            if self.year < 2000 {
//                self.year = 2000
//            }
//          print("CurrentValue year - \(self.year)")
//        }
//    }
//    var fullName: String {
//        get {
//            return "\(mark) \(model) \(year)"
//        }
//        set{
//            print(newValue)
//            let full = newValue.components(separatedBy: " ")
//            if full.count > 2{
//                self.mark = full[0]
//                self.model = full[1]
//                if let newYear = Int(full[2]){
//                    self.year = newYear
//                }
//            }
//        }
//    }
//    lazy var price: Int = getPric3e()
//    init(mark: String, model: String, year: Int){
//        self.mark = mark
//        self.model = model
//        self.year = year
//        Car.count += 1
//    }
//}

//func getPrice()->Int{
//    print("Start")
//    var i = 0
//    while i < 300000 {
//        i += 1
//    }
//    print("Finish")
//    return 300000
//}

//var car1 = Car(mark: "Toyota", model: "Rav4", year: 2020)
//var car2 = Car(mark: "Toyota", model: "Corolla", year: 2007)
//var car3 = Car(mark: "Toyota", model: "Mark 2", year: 1999)
//print(car.fullName)
//print(car.price)
//print(Car.getNumberCars())
//car.year = 1999
//print(car.fullName)
//car.fullName = "Mazda Miata 2005"
//print(car.fullName)

// protocols

//protocol Movable{
//    var speed: Int {get}
//    func move()
//}
//
//class Human: Movable{
//    var speed: Int = 3
//    func move() {
//        print("\(speed)")
//    }
//    var firstName: String
//    init(firstName: String) {
//        self.firstName = firstName
//    }
//}
//struct Car: Movable{
//    var speed: Int = 120
//    func move() {
//        print("\(speed)")
//    }
//    var mark: String
//}
//
//struct Cat: Movable{
//    var speed: Int = 15
//    func move() {
//        print("\(speed)")
//    }
//    var name: String
//}

//let human = Human(firstName: "Alex")
//let car = Car(mark: "Audi")
//let cat = Cat(name: "Murka")
//
//let objects: [Movable] = [human, car, cat]
//
//for objects in objects{
//    objects.move()
//}
//
//var wallet = [100, 200, 100, 500, 1000, 2000, 1000, 5000]
//
//func handle100(wallet: [Int]) -> [Int] {
//    var newWallet = [Int]()
//    for banknote in wallet {
//        if banknote >= 1000 {
//            newWallet.append(banknote)
//        }
//    }
//    return newWallet
//}
//
//print(handle100(wallet: wallet))

// extensions

extension String{
    mutating func clear(){
        
        self = self.trimmingCharacters(in: .whitespaces)
        self = self.prefix(1).uppercased() + self.dropFirst()
    }
    var isShort: Bool{
        return self.count <= 15
    }
}

var str = "  this is test string  "
str.clear()
print(str.isShort)

protocol Movable{
    var speed: Int {get}
    func move()
//    func jump()
}

struct Human{
    var name: String

}

extension Human: Movable{
    var speed: Int {
        return 5
    }
    func move() {
        print("top")
    }
    func jump(){
        print("Up")
    }
}
var human1 = Human(name: "Danil")
human1.move()
human1.jump()
print(human1.name)



