//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/* 
 问题
 1 一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，意思是我在不同类中名字是唯一的吗?就行所谓的宏定义。
 2 项目中先声明let var之类的，提示_代替那就是每次都这么声明，不会这么傻逼吧
 3 类型别名 typealias 一个新的名字，怎么和原来的产生联系呢，就是类型别名的具体用法
 4 如果你需要在变量的生命周期中判断是否是nil的话，请使用普通可选类型。那个生命周期什么生命周期？那么举例中的if nil 呢？
 5 do catch catch具体判断条件到具体章节再去做详细学习
 
 1.0常量和变量
 常量和变量把一个名字（比如 maximumNumberOfLoginAttempts 或者 welcomeMessage ）和一个指定类型的值（比如数字 10 或者字符串 "Hello" ）关联起来“”。常量的值一旦设定就不能改变，而变量的值可以随意更改。
 1.1声明常量和变量
 常量和变量必须在使用前声明，用 let 来声明常量，用 var 来声明变量。
 你可以在一行中声明多个常量或者多个变量，用逗号隔开： 
 var x = 1.0, y = 0.0, z = 1.2
 如果你的代码中有不需要改变的值，请使用 let 关键字将它声明为常量。只将需要改变的值声明为变量。（养成好的代码习惯）
 
 2.0类型标注
 当你声明常量或者变量的时候可以加上类型标注（type annotation），说明常量或者变量中要存储的值的类型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称。
 你可以在一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注：var red, grren, blue: Double（这个在变量常量是可以的）
 一般来说你很少需要写类型标注。
 
 3.0 常量和变量的命名
 一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转。
 
 4.0 输出常量和变量 字符串插值
 Swift 用字符串插值（string interpolation）的方式把常量名或者变量名当做占位符加入到长字符串中，Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义
 
 5.0 分号 
 与其他大部分编程语言不同，Swift 并不强制要求你在每条语句的结尾处使用分号（;），当然，你也可以按照你自己的习惯添加分号。有一种情况下必须要用分号，即你打算在同一行内写多条独立的语句：let cat = "🐶"; print(cat)
 
 6.0 整数
 整数就是没有小数部分的数字，比如 42 和 -23 。整数可以是 有符号（正、负、零）或者 无符号（正、零）。
 
 Swift 提供了8，16，32和64位的有符号和无符号整数类型。这些整数类型和 C 语言的命名方式很像，比如8位无符号整数类型是UInt8，32位有符号整数类型是 Int32 。就像 Swift 的其他类型一样，整数类型采用大写命名法。
 你可以访问不同整数类型的 min 和 max 属性来获取对应类型的最小值和最大值：
 
 let minValue = UInt8.min  // minValue 为 0，是 UInt8 类型
 let maxValue = UInt8.max  // maxValue 为 255，是 UInt8 类型
一般来说，你不需要专门指定整数的长度。Swift 提供了一个特殊的整数类型Int，长度与当前平台的原生字长相同：
 Swift 也提供了一个特殊的无符号类型 UInt，长度与当前平台的原生字长相同：尽量不要使用UInt
 
 7.0 浮点数
 浮点类型比整数类型表示的范围更大，可以存储比 Int 类型更大或者更小的数字。Swift 提供了两种有符号浮点数类型：Double表示64位浮点数。Float表示32位浮点数。Double精确度很高，至少有15位数字，而Float只有6位数字。选择哪个类型取决于你的代码需要处理的值的范围，在两种类型都匹配的情况下，将优先选择 Double。
 
 8.0 类型安全和类型推断（记住名词）
 当推断浮点数的类型时，Swift 总是会选择 Double 而不是Float。
 
 9.0 数值型字面量
 字面量 let str = "Hello World" 字面量就是Hello World
 let decimalInteger = 17
 let binaryInteger = 0b10001       // 二进制的17
 let octalInteger = 0o21           // 八进制的17
 let hexadecimalInteger = 0x11     // 十六进制的17
 数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加“额外的零并且包含下划线”，并不会影响字面量：
 let justOverOneMillion = 1_000_000.000_000_1
 
 10.0数值型类型转换
 swift 值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显式转换。
 在C、Objective-C和Java等其他语言中，整型之间有两种转换方法：
 从小范围数到大范围数转换是自动的；(编译器自动完成)
 从大范围数到小范围数需要强制类型转换，有可能造成数据精度的丢失
 10.1 整数转换
 SomeType(ofInitialValue) 是调用 Swift 构造器并传入一个初始值的默认方法。注意，你并不能传入任意类型的值，只能传入 UInt16 内部有对应构造器的值。不过你可以扩展现有的类型来让它可以接收其他类型的值（包括自定义类型）类名+（）()中初始化
 10.2 整数和浮点数转换
 swift 值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显式转换。记住这句话就行了
 
 11.0 类型别名
 类型别名（type aliases）就是给现有类型定义另一个名字。你可以使用typealias关键字来定义类型别名。
 12.0 布尔值
 Swift中一个布尔类型 Bool，两个布尔常量 true and false
 
 13.0 元组
 元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组。
 let http404Error = (404,"Not Found")
 let http200Error = (statusCode: 200,description: "OK")
 let (code,message) = http404Error
 let (codeRedef,_) = http404Error
 print("wp\(code)")
 print("xiabiaois\(http404Error.1)")
 print("mingis\(http200Error.statusCode)")
 
 14.0 可选类型
 可选类型表示：
 有值，等于 x
 或者
 没有值
 Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，nil 是一个指向不存在对象的指针。在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。
 任何类型的可选状态都可以被设置为 nil，不只是对象类型。OC中nil只对对象起作用——对于结构体，基本的 C 类型或者枚举类型不起作用。对于这些类型，Objective-C 方法一般会返回一个特殊值（比如NSNotFound）来暗示值缺失。
 如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型。 nil不能用于非可选的常量和变量。
 var serverResponseCode: Int? = 404  serverResponseCode是个可选类型，并且包括一个可选值404
 如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil
 var surveyAnswer: String?
 
 15.0 if 语句以及可选值强制解析
 你可以使用 if 语句和 nil 比较来判断一个可选值是否包含值。你可以使用“相等”(==)或“不等”(!=)来执行比较。if convertedNumber != nil {}
 当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping）
    print("convertedNumber \(convertedNumber) ") log输出 convertedNumber Optional("contain") 
    print("convertedNumber \(convertedNumber!) ")log输出
        convertedNumber contain

 16.0 可选绑定
 使用可选绑定（optional binding）来判断可选类型是否包含值,如果包含就把值赋给一个临时常量或者变量
 if let name = someOptional {
 }
 可以这样朋友 if let firstNumber = Int("4"), let secondNumber = Int("52") {}
 
 17.0 隐式解析可选类型 (第一次赋值之后确定之后一直有值)
 当可选类型被第一次赋值之后就可以确定之后一直有值的时候，隐式解析可选类型非常有用。
 一个隐式解析可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用，并不需要每次都使用解析来获取可选值。
 let possibleString: String? = "An optional string."
 let forcedString: String = possibleString!  // 需要感叹号来获取值
 
 let assumedString: String! = "An implicitly unwrapped optional string."
 let implicitString: String = assumedString  // 不需要感叹号
 你要做的只是声明的时候把感叹号放到类型的结尾，而不是每次取值的可选名字的结尾。
 你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值：if nil
 你也可以在可选绑定中使用隐式解析可选类型来检查并解析它的值： if let name = someOptional {}
 如果一个变量之后可能变成nil的话请不要使用隐式解析可选类型。如果你需要在变量的生命周期中判断是否是nil的话，请使用普通可选类型。
 
 18 错误处理
  1.采用Error协议的类型来表示错误。do try catch 进去throws函数有throw抛出就进去catch可选的内容，do函数下面的代码不走了，没有throw抛出，do函数继续走下面的代码
 2.另一种处理错误的方式使用try?将结果转换为可选的。如果函数抛出错误，该错误会被抛弃并且结果为nil。否则的话，结果会是一个包含函数返回值的可选值。（是个可选类型，并且包含一个可选值job send）
 enum PrinterError: Error
 {
 case outofPaper
 case noToner
 case onFire
 }
 
 // 使用空格throws来表示一个可以抛出错误的函数
 func send(job: Int, toPriter prinerName: String) throws -> String
 {
 if prinerName == "Never Has Toner" {
 // 使用throw来抛出一个错误
 throw PrinterError.noToner
 }
 
 return "Job sent"
 }
 
 do {
 try send(job: 22, toPriter: "Never Has Toner1")
 print("jixuzou")
 } catch  {
 print(error)
 }
 
 19.0 断言
 注意：当代码使用优化编译的时候，断言将会被禁用，例如在 Xcode 中，使用默认的 target Release 配置选项来 build 时，断言会被禁用。
 如果条件判断为 true，代码运行会继续进行；如果条件判断为 false，代码执行结束，你的应用被终止。
 let age = -3
 assert(age >= 0, "A person's age cannot be less than zero")
 // 因为 age < 0，所以断言会触发
 何时使用断言：
 整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。
 需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
 一个可选值现在是 nil，但是后面的代码运行需要一个非 nil 值。

 */
let uminValue = UInt8.min
let umaxValue = UInt8.max

let minValue = Int8.min
let maxValue = Int8.max

typealias uminValueRedef = Int8

let http404Error = (404,"Not Found")
let http200Error = (statusCode: 200,description: "OK")
let (code,message) = http404Error
let (codeRedef,_) = http404Error
print("wp\(code)")
print("xiabiaois\(http404Error.1)")
print("mingis\(http200Error.statusCode)")
let (code1,message1) = (4041,"ww")
print("wp\(code1)")

var convertedNumber: String? = "contain"
if convertedNumber != nil {
    print("convertedNumber \(convertedNumber!) ")
}

if let action = convertedNumber {
    print("pppppp \(action)")
}
else{
    print("notFound")
}

if let firstNumber = Int("4"), let secondNumber = Int("52") {
    
}

if let firstNumberRedef = Int("4")
{
    print(firstNumberRedef)
}






		