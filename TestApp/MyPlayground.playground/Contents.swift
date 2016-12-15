//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = 10
var b = 10
let c = 30
let d = 1+4

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSign = "665"

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let possibleString: String = "An optional string."

print(possibleString)

var s = "laji"

var po:String = "i am hehe"

var yes:String = "hehe " + s

var bbb:String? = "wo shi ren"

// 循环语句
for index in 1...5 {
    print("\(index) " + "123")
}

// 数字转String
var number = 123.5
var string = "\(number)"
var string1 = String(123.5)

// String转数字
var string2 = "111"
var number2 = Int(string2)

// 数字之间互转
var doubleNumber = 1.8
var intNumber = 5
intNumber = Int(doubleNumber)

// 集合类型
var array = [1, 2, 3] // 这里Swift会进行自动类型推导，认为a是Array<Int>
var array1:[Int] = [4, 5, 6]
var array2:[String] = ["hehe", "haha", "hihi"]
var array3 = [Int](repeating:7, count:4)
var array4 = [Int]() // 声明一个空数据
array3.append(1)
array4 += [2, 3]

for (index, val) in array2.enumerated() { // 数组遍历
    print("item \(index) is \(val)")
}

var abbr = ["BJ":"Beijing", "SH":"Shanghai"] // 字典
abbr.updateValue("laxi", forKey: "BJ")

// 函数使用 & !?的使用
func doSoming(str:String?) {
    let v:String! = str
    if v != nil {
        print("zhiweiliang done " + str!)
    }
}

func doSomingMore(str:String?) {
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

// 和Python，Scala等一样，Swift中，函数是第一等公民，可以像变量那样用于赋值。
var myAddFunc:(Int, Int) -> Int = addTwoInt

myAddFunc(2, 10)

// 具有多个返回值的函数，需要使用到元组类型
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

// 类和对象
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

