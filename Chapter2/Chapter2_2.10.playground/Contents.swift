//: Playground - noun: a place where people can play

//import Cocoa

var str = "Hello, playground"
//2.10 Optional<Wrapped>型
let p61_none = Optional<Int>.none
print(".none: \(String(describing: p61_none))")//Optional<Wrapped>.none はnilと簡略表記できる
let p61_some = Optional<Int>.some(1)
print(".some: \(String(describing: p61_some))")//Optional<Wrapped>.some はOptional(値)と簡略表記できる

//型推論
//.someの生成する場合はWrapped型は.someにもたせる値から型推論できる
let p62_some = Optional.some(1) //Optional<Int>型

//.noneを精製する場合は型推論の元となる値が存在しないため、
//型アノテーションで代入先の変数や定数の方を指定するなどの方法で方を決定する必要がある
let p62_none: Int? = Optional.none //Optional<Int>型

//-- Optional<Wrapped>型の値の生成
var p62_a:Int?
p62_a = nil
p62_a = Optional(1)
p62_a = 1

let p62_optionalInt:Int? = nil
let p62_optionalString:String? = nil
print(type(of:p62_optionalInt),String(describing: p62_optionalInt))
print(type(of:p62_optionalString),String(describing: p62_optionalString))


let p63_a: Int? = nil//OK
//let p63_b = nil//定数の方が決まらないためcompile error

//イニシャライザによる.someの生成
let p63_optionalInt: Int? = 1
print(type(of:p63_optionalInt),String(describing: p63_optionalInt))

//--Optional<Wrapped> 型のアンラップ　p64
let p64_a: Int? = 1
let p64_b: Int? = 1
// Wrapped型の変数や定数と同じように扱うことができない
//p64_a + p64_b //compile error

//オプショナルバインディング
let p65_optionalA = Optional("a")
if let a = p65_optionalA {
    print(type(of:a))// p65_optionalAに値がある場合のみ実行される
}

// ??演算子
// 値が存在しない場合のデフォルト値を指定する演算子
let p65_optionalInt:Int? = nil
let p65_int = p65_optionalInt ?? 3//3

//強制アンラップ
//!演算子によるOptional<Wrapped>型の値の取り出し
//Optional<Wrapped>型に値が入っていない場合は実行時エラーが発生するので危険
//値の存在がよほど明らかな箇所や、あたいが存在しなければプログラムを終了させたい箇所以外では、強制アンラップは避ける
let p65_a:Int? = 1
let p65_b:Int? = 1
p65_a! + p65_b! //強制アンラップ

//オプショナルチェイン
//アンラップを伴わずに値のプロパティやメソッドにアクセス
//Optional<Double>型からDouble型のisInfiniteプロパティにアクセスするために、オプショナルバインディングを行う例
let p66_optionalDouble = Optional(1.0)
let p66_optionalIsInfinite:Bool?
if let double = p66_optionalDouble {
    p66_optionalIsInfinite = p66_optionalDouble?.isInfinite
} else {
    p66_optionalIsInfinite = nil
}

print(String(describing:p66_optionalIsInfinite))

//上記のコードをオプショナルチェインを使って書き換えた物
let p67_optionalDouble = Optional(1.0)
let p67_optionalIsInfinite = p67_optionalDouble?.isInfinite
print("p67_optionalIsInfinite: \(String(describing: p67_optionalIsInfinite))")

let p67_optionalRange = Optional(0..<10)
let p67_containsSeven = p67_optionalRange?.contains(7)
print("p67_containsSeven:\(p67_containsSeven)")

// 暗黙的にアンラップされたOptional<Wrapped>型
var p68_a: String? = "a"
var p68_b: String! = "b"

print(type(of: p68_a))
print(type(of: p68_b))

var p68_c: String! = p68_a
var p68_d: String? = p68_b

let p68_int_a:Int! = 1
p68_int_a + 1
var p68_int_b:Int! = nil
//p68_int_b + 1//値が入っていないため実行時エラー



