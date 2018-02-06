//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
//3.2 条件分岐
let p77_days = 2
if p77_days <= 3 {
    print("クーポンが三日以内に期限切れとなります")
}
let p77_a = 1
if p77_a > 0 {
    print("aは0より大きい値です。")
}

let p77_1_a = 1 //Int型
//if p77_1_a {// p77_1_aはBool型ではない為コンパイルエラーCompile Error
//}

let p78_days = 4
if p78_days <= 3 {
    print("クーポンが三日以内に期限切れとなります")
} else {
    print("クーポンはまだしばらくお使いいただけます")
}

let p78_1_days = 2
if p78_1_days < 0 {
    print("クーポンの期限が切れています")
} else if p78_1_days <= 3 {
    print("クーポンが三日以内に期限切れとなります")
} else {
    print("クーポンはまだしばらくお使いいただけます")
}

let p79_optionalA = Optional(1)
if let a = p79_optionalA {
    print("a value is \(a)")
} else {
    print("a value is nil")
}

let p80_optionalA = Optional("a")
let p80_optionalB = Optional("b")

if let a = p80_optionalA,let b = p80_optionalB {
    print("a is \(a).  b is \(b).")
} else {
    print("aかbが存在しません")
}

// Any型をダウンキャストして成功した場合にif内が実行され{}内ではInt型として扱える
let p80_a:Any = 1
if let int = p80_a as? Int {
    print("値はInt型の\(int)です")
    var b:Int = 10
    b +=  int
    print("value b is \(b)")
}

// if-case分　ーパターンマッチによる分岐
let p81_value = 9
if case 1...10 = p81_value {
    print("1以上10以下の値です")
}

//Guard文　条件付成立時に早期退出する分岐
func p82_SomeFunction(){
    let value = -1
    guard value >= 0 else {
        print("0未満の値です")
        return
    }
}
p82_SomeFunction()

func p82_printIfPositive(_ a:Int) {
    guard a > 0 else {
        return
    }
    print(a)
}

p82_printIfPositive(1)

//func p83_printIfPositive(_ a:Int) {
//    guard a > 0 else {
//        //else 節でprintIfPositive(_:)関数から退出していない為Compile error
//    }
//    print(a)
//}

//gurad文で宣言された変数や定数がguard文の外で使用可能
func p83_someFunction(_ a:Any) {
    
    guard let int = a as? Int else {
        print("aはInt型ではありません")
        return
    }
    print("値はInt型の\(int)です")
}
p83_someFunction(1)
p83_someFunction("str")

//if文との使い分け
func p84_add(_ optionalA:Int?, _ optionalB:Int?) -> Int? {
    let a:Int
    if let unwrappedA = optionalA {
        a = unwrappedA
    } else {
        print("第一引数に値が入っていません")
        return nil
    }
    
    let b:Int
    if let unwrappedB = optionalB{
        b = unwrappedB
    } else {
        print("題意に引数に値が入っていません")
        return nil
    }
    return a+b
}

p84_add(Optional(1), Optional(2))

//guard let文で宣言した定数は{}外でも使用できる
//条件に応じて早期退出するコードはguard文を使用して実装した方がシンプルになる
//退出処理が抜けた場合にはコンパイルエラーになるので単純ミスが防げる
func p85_add(_ optionalA: Int? , _ optionalB: Int?) -> Int? {
    guard let a = optionalA else {
        print("第一引数に値が入っていません")
        return nil
    }
    guard let b = optionalB else {
        print("第二に引数がはいっていません")
        return nil
    }
    return a + b
}

p85_add(Optional(2),Optional(1))

//switch文
let p86_a = 1
switch p86_a {
case Int.min..<0:
    print("aは負の値です")
case 1..<Int.max:
    print("aは正の値です")
default:
    print("aは０です")
}

//ケースの網羅性チェック
enum SomeEnum {
    case foo
    case bar
    case baz
}
let p87_foo = SomeEnum.foo
switch p87_foo {
case .foo:
    print(".foo")
case .bar:
    print(".bar")
case .baz://.bazのケースが存在していない場合は .bazが想定されていないため網羅的はなく、コンパイルエラーになる
    print(".baz")
}


//switch分の網羅性を満たすには制御式の方が取りうる全ての値をケースで記述する必要がある
//以下の例はBool型の例。true,falseのいずれかのcase文がない場合にはエラーとなる
let p87_a = true
switch p87_a {
case true:
    print("true!!")
case false:
    print("False!!")
}

//defaultキーワード
//デフォルトケースは極力避けてここのケースを列挙するほうが望ましい
//新たなケースが追加された場合も自動的にデフォルトケースに入ってしまうため。変更に弱いプログラムをまねく
let p88_foo = SomeEnum.baz
switch p88_foo {
case .foo:
    print(".foo")
case .bar:
    print(".bar")
default:
    print("Default")
}


//whereキーワード
//制御式(p89_optionalA)がパターン(.some(let a))にマッチし、かつ条件式(a >10)を満たす場合に実行する制御文を書ける
let p89_optionalA: Int? = 1
switch p89_optionalA {
case .some(let a) where a > 10:
    print("10より大きい値\(a)が存在します")
default:
    print("値が存在しないもしくは１０以下です")
}

