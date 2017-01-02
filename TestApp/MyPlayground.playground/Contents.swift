//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = 10.1 // 宽类型有限，这里a自动推导为Double
var b = 10
let c = 30
let d = 1+4
let e = a + Double(b)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSign = "665"

// ****** 求余运算符（模） ******
var zzz = 10 % 3

// ****** 字符串 ******
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)" // 字符串内插

let possibleString: String = "An optional string."

print(possibleString)

var s = "laji" // 自动类型推导

var po:String = "i am hehe" // 类型标注

var yes:String = "hehe " + s

var bbb:String? = "wo shi ren"

let ddd = "Hello,world"
print("ddd length = \(ddd.characters.count)") // 字符串长度

let eee = "Hello,world"
if ddd == eee { // 字符串比较，可用 == 和 ！= 直接比较
    print("ddd equals to eee")
}

typealias Hehe = String // 类型别名，现在Name类型和String类型是完全一样的了
var hehe:Hehe = "hehe"

// ****** 循环语句 ******
for index in 1...5 {
    print("\(index) " + "123")
}

// ****** 数字转String ******
var number = 123.5
var string = "\(number)"
var string1 = String(123.5)

// ****** String转数字 ******
var string2 = "111"
var number2 = Int(string2)

// ****** 数字之间互转 ******
var doubleNumber = 1.8
var intNumber = 5
intNumber = Int(doubleNumber)

// ****** 集合类型【数组】 ******
var array = [1, 2, 3] // 这里Swift会进行自动类型推导，认为a是Array<Int>
var array1:[Int] = [4, 5, 6]
var array2:[String] = ["hehe", "haha", "hihi"]
var array3 = [Int](repeating:7, count:4)
var array4 = [Int]() // 声明一个空数据
var array5:Array<Int> = [1, 3, 5]
var array6 = Array<Int>() // 声明一个空数据
var arrayMixed:Array<Any> = [1, "laji", true, 1.7] // 混合数组，必须显示声明为Array<Any>类型

array3.append(1) // 数组插入元素
array4 += [2, 3]
array5.insert(7, at: 0)
array2.remove(at: 2) // 数组删除元素
array5[0]// 访问数组元素
array5[0]  = 4 // 修改数组元素
array5[0...2] = [6, 7, 8] // 通过数组下标批量修改元素

print("array5 = \(array5.count)") // 数组长度
array3.isEmpty // 数组判空

for (index, val) in array2.enumerated() { // 数组遍历，使用enumerate函数
    print("item \(index) is \(val)")
}

for num in array2 { // 数组遍历，for in循环快速遍历
    print("nunber = \(num)")
}

// ****** 集合类型【字典】 ******
var dictionary1:Dictionary<String,Int> = ["Guangzhou":1]
var dictionary2:[String:Int] = ["Guangzhou":1, "Foshan":2]
var abbr = ["BJ":"Beijing", "SH":"Shanghai"]
print("dictionary length = \(abbr.count)") // 字典长度
abbr.isEmpty // 字典判空

abbr["GZ"] = "Guangzhou" // 增加字典元素（该key不存在，则会自动创建该键值对）
abbr["GZ"] = "GZ" // 修改字典元素（该key存在，则会自动更新该键对应的值）
abbr["GZ"] // 访问字典元素
abbr.updateValue("laxi", forKey: "BJ") // 修改字典元素
abbr.updateValue("Shenzhen", forKey: "SZ") // 修改字典元素
abbr["SZ"] = nil // 删除字段元素
dictionary1.removeAll() // 删除全部元素
dictionary2 = [:] // 删除全部元素

for (key,value) in abbr { // 字典遍历
    print("abbr key = \(key), and abbr value = \(value)")
}

// ****** 函数使用 & !?的使用 ******
var stringValue1 = "55"
var stringValue2 = "5d"
var intValueNotNil = Int(stringValue1);
var intValueNil = Int(stringValue2)
print("intvalue1 = \(intValueNotNil!)") //强制解封可选类型，正常运行
print("intvalue2 = \(intValueNil)") // nil并不是一个空指针，也不只限于对象类型，而表示任意一个可选类型的变量的值缺失。强制解封的话会发生运行时错误

let unkownValue:Int? = 3
if let variant = unkownValue { // 可选绑定
    print("variant = \(variant)") // 打印时不需要!来解封可选类型
}

func doSoming(str:String?) {
    let v:String! = str
    if v != nil {
        print("zhiweiliang done " + str!)
    }
}

func doSomingMore(str:String?) { // 可选绑定
    if let v = str {
        print("zhiweiliang done more")
    }
}

func myFunction(str:String?) {
    
}

doSoming(str: "haha")
doSomingMore(str: "may")

func convertToString(pretty:Bool = true) {
    print("convetToString \(pretty)")
}

convertToString()
convertToString(pretty:false)

func addTwoInt(a:Int, b:Int) -> Int { // 带返回类型的函数
    return a + b
}

addTwoInt(a: 1, b: 7)

// ****** 和Python，Scala等一样，Swift中，函数是第一等公民，可以像变量那样用于赋值。 ******
var myAddFunc:(Int, Int) -> Int = addTwoInt

myAddFunc(2, 10)

// ****** 具有多个返回值的函数，需要使用到元组类型 ******
// 获取在一个字符串中得元音、辅音以及其它的个数
func count(str:String) -> (vowels:Int, consonants: Int, others: Int) {
    var vowels = 0;
    var consonants = 0;
    var others = 0;
    
    if (str.isEmpty) {
        return (vowels, consonants, others)
    }
    
    for character in str.characters {
        switch String(character).lowercased() {
        case "a", "e", "i", "o", "u":
            vowels += 1
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            consonants += 1
        default:
            others += 1
        }
    }
    
    return (vowels, consonants, others)
}

let str11 = "Hello World"
let number11 = count(str: str11)
print("\(number11.vowels)个元音 \(number11.consonants)个辅音 \(number11.others)个其他")

var newTuple = ("zhiweiliang", 28) // 元组的创建，元组即变量的集合
print("\(newTuple.0) \(newTuple.1)") // 元组解绑（下标解绑的方式）

var newTuple1 = (name:"zhiweiliang", age:28) // 带变量名的元组创建
print("\(newTuple1.name) \(newTuple1.age)")

// ****** 结构体 ******
// 注意，结构体属于值类型，而Swift中的类属于引用类型。他们在内存管理方面会有不同。
struct Person { // 定义结构体
    // 结构体中定义成员变量时一定要标注类型
    var name:String
    var age:Int
    
    func introduce() {
        print("i am \(name), i am \(age) years old")
    }
}

var person = Person(name:"William", age:28)
person.age = 18
person.introduce()

// ****** 类和对象 ******
class Square {
    var name:String
    
    init(str:String) {
        self.name = str
    }
    
    init(i:Int) {
        self.name = String(i)
    }
    
    convenience init() {
        self.init(str:"Unknown")
    }
    
    var length = 1.2
    var size:Double {
        get {
            return size * size
        }
        set(newSize) {
            length = sqrt(newSize)
        }
    }
}

var square:Square = Square.init(str: "zhiweiliang")
square.size = 1.1
print(square.name + "\(square.length)")

// ****** 类型转换（is、as？和as！） ******
class Fruit {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}

class Apple : Fruit {
    
}

class Orange : Fruit {
    
}

// is 操作符
var fruit:Fruit = Fruit.init(name: "fruit")
var apple:Apple = Apple.init(name: "Apple")
var orange:Orange = Orange.init(name: "Orange")
if apple is Apple {
    print("this is apple")
}
if apple is Fruit {
    print("this is fruit")
}
if apple is Orange {
    print("this is orange")
}
if fruit is Apple {
    print("this is fruit")
}

// as! 操作符
var fruit1 = fruit as! Fruit
var apple1 = apple as! Fruit

// as? 操作符
if var fruit2 = fruit as? Fruit {
    print("do something with fruit")
}

// // ****** 闭包函数 ******
var usernames = ["Cc", "Lves", "Lecoding", "Wildcat"]

func backWards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

// 标准模式
usernames.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

// 注意，函数的最后一个参数是闭包时 () 可以省略
usernames.sort{ (s1: String, s2: String) -> Bool in
    return s1 < s2
}

// 根据上下文推断类型，因为所有的类型都可以被正确推断，返回箭头（->）和围绕在参数周围的括号也可以被省略：
usernames.sort { s1, s2 in
    return s1 < s2
}

// 单行表达式闭包可以通过省略return关键字来隐式返回单行表达式的结果
usernames.sort { s1, s2 in s1 < s2 }

// 内联闭包可以省略参数名直接用参数顺序$0，$1，$2调用
usernames.sort { $0 < $1 }

usernames.sort(by: >)

usernames.sort(by: backWards)

// 尾随闭包（Trailing Closures），尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用
func caculateTwoNums(num1: Int, num2: Int, Closure:(Int, Int) -> Int) -> Int {
    return Closure(num1, num2)
}

// 内联闭包形式，不使用尾随闭包，求和
var numberResult = caculateTwoNums(num1: 2, num2: 4, Closure: {(num1: Int, num2: Int) -> Int in
    return num1 + num2
})

//使用尾随闭包,求乘机
var numReult2 = caculateTwoNums(num1: 3, num2: 4) { $0 * $1 }
print(numReult2)


//声明一个存放函数的数组
var functionArray: [() -> Void] = []
//定义一个接收闭包参数的函数，如果定义非逃逸函数 func doSomething(@noescape paramClosure:() -> Void) 就会编译错误
func doSomething(paramClosure: @escaping () -> Void){
    //把参数放入数组中，用于逃逸调用
    functionArray.append(paramClosure)
    
}

//调用函数
doSomething(paramClosure: {print("Hello world")})

doSomething(paramClosure: {print("Hello LvesLi")})

//逃逸调用闭包
for closurePrama in functionArray {
    print("\(closurePrama)")
}

// ****** 枚举 ******
enum Orientation: Int{
    
    case UP = 4
    case DOWN
    case LEFT
    case RIGHT
}

let orientation = Orientation.RIGHT
print("\(orientation.hashValue)") //通过枚举值-->原始值

let orient = Orientation(rawValue: 5) //原始值 --> 枚举值
if let newOrient = orient {
    print(newOrient.rawValue)
}

// ****** 泛型 ******
class Foo<T: Equatable> {
    
    var field: T
    
    init(field:T) {
        self.field = field
    }
}

class TestFoo : Equatable{
    
    init() {
        
    }
    
    static func ==(lhs: TestFoo, rhs: TestFoo) -> Bool {
        return true
    }
    
}

var testFoo = TestFoo.init()
var foo = Foo.init(field: testFoo)
print(foo.field)
