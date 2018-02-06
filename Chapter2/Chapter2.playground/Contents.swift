//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let a = 123
let b = "abc"
type(of:a)
type(of:b)
var int_a:Int
int_a = 1

let p28_int_a:Int = 123
//let p28_int_b:Int = "abc"//Compile Error
let p29_let_int_a = 1 + 2;
var p29_var_int_a = 1
//p29_var_int_a = nil//Compile Error

var p29_int_a:Int//変数のみ初期化出力
//print(p29_int_a)//p29_int_aが初期化されてないのでエラー
let p29_let_int_b:Int//定数のみ初期化出力
//print(p29_let_int_b)//p29_let_int_bはみ初期化のためコンパイルエラー

var p30_int_a = 1
p30_int_a = 2
let p30_let_b = 1
//p30_let_b = 2 //定数に再代入出来ずコンパイルエラー

let p30_a:Int
let condition = true
if condition {
    p30_a = 1
} else {
    p30_a = 2
}

//代入が一度だけでもコンパイラが保証できない場合にはコンパイルエラー
//
//let p30_1_a:Int
//for index in [1] {
//    //p30_1_a = index
//}

//====2.3 スコープ ====
func someFunction() {
    let p31_a = "a"
    print(p31_a)
}
//print(p31_a)//スコープ外の参照をしようとしているためエラー
someFunction()

let globalA = "global_a"
func someFunction2(){
    print(globalA) //グローバルスコープで宣言された変数を参照
}
print(globalA)
someFunction2()

//====2.4 Bool型 ====
let p32_bool_a = true
let p32_bool_b = false

let p33_bool_a = true
let p33_bool_b = !p33_bool_a //false

//論理演算子
let p33_1_bool_a = false && false
let p33_1_bool_b = false && true
let p33_1_bool_c = true && false
let p33_1_bool_d = true && true

let or_a = false || false
let or_b = false || true
let or_c = true || false
let or_d = true || true

//2.5 数値型 p34-
let p34_int_a = 123//Int 型
let p34_double_a = 1.0 //Double 型

//整数型の宰相、最大値
//整数型にはInt8,Int16,Int32,Int64
let int8_min = Int8.min
let int8_max = Int8.max

//Int型の最大、最小が幾つなのか試してみる
//MacBookProのPlaygroundではInt64らしい
var int_max = Int.max
var int_min = Int.min

//浮動小数点型 p35-
let p36_a: Double = 12345678.9 // １０の３０８乗の正負
let p36_b: Float  = 12345678.9// 10の３８乗の正負

//型エイリアス typealias
//testIntをInt8型のエイリアスとしてみる
typealias testInt = Int8
let testInt_max = testInt.max

//p36 浮動小数点型の演算結果が無限大になった場合の値はinfinityとなる
let p36_d_a:Double = 1.0/0.0
//演算結果がinfinityとなっているかはisInfiniteで確認できる
p36_d_a.isInfinite

let p37_d_b: Double = Double.infinity
p37_d_b.isInfinite

//浮動小数点型で演算で不正な値が渡されたりしたケースにはNaN(Not a Number)となる
let nan_a:Double = 0.0/0.0
nan_a.isNaN
let nan_b:Double = Double.nan
nan_b.isNaN

//数値型同士の相互変換
let p37_int_a: Int = 123
//let p37_int_b: Int64 = p37_int_a //Compile Error
let p37_float_c:Float = 1.0
//let p37_double_d:Double = p37_float_c //Compile Error

//イニシャライザ
let p38_int_a :Int = 123
let p38_int64_b:Int64 = Int64(p38_int_a)
let p38_float_c :Float = 1.0
let p38_double_d:Double = Double(p38_float_c)

//生成する型より精度の高い方の場合には生成した方の精度に合わせて単数処理が行われる *
let p38_1_float_c:Float = 1.99
let p38_1_int_d = Int(p38_1_float_c)//1
let p38_1_double_e:Double = 1.23456789
let p38_1_float:Float = Float(p38_1_double_e)

//比較演算子
123 == 123
123 != 456
123 > 456
123 >= 456
123 < 456
123 <= 456

//比較演算子は比較対象の型一致している場合のみ使える
let p39_float_a :Float = 123
let p39_float_b :Double = 123
//p39_float_a == p39_float_b//Compile Error
p39_float_a == Float(p39_float_b)

//演算子は対象型一致が必要。一致しない場合にはコンパイルエラーとなる
//加算、減算、乗算、除算、剰余
1+1
5-2
2*4
7%3

let p40_int_a :Int = 123
let p40_float_b:Float = 123.0
//p40_int_a + p40_float_b//Compile Error
p40_int_a + Int(p40_float_b)

var p40_a  = 1
p40_a += 6
p40_a = 1
p40_a -= 4
p40_a = 1
p40_a *= 2
p40_a = 5
p40_a %= 2

//Foundation による高度な操作
import Foundation
sin(Float.pi / 2.0)
log(1.0)

//====2.6 String型 p41-
let p41_str_a = "ここに文字列を入れる"
let p42_str_a = "1\n2\n3"
print(p42_str_a)

//文字列リテラル内での値の展開
let p42_result = 7+9
let p42_output = "結果:\(p42_result)"
print(p42_output)

let p42_str_result = "優勝"
let p42_str_output = "結果：\(p42_str_result)"

//複数行の文字列リテラル
let haiku = """
五月雨を
あつめて早し
最上川
"""
print(haiku)

let haiku_1 = """
    五月雨を
        あつめて早し
    最上川
    """
print(haiku_1)
//let haiku_2 = """
//    五月雨を
//あつめて早し
//    最上川
//    """// """より浅い場所にある「あつめて早し」が原因でコンパイルエラー
//let haiku_3 = """
//    五月雨を
//あつめて早し
//    最上川"""// """と同じ行に文字列が記載されているためコンパイルエラー

//String型の個々の文字を表す型
let p44_string = "a"//String 型
let p44_character:Character = "a"//Character型
let p45_string = "abc"
let p45_startIndex = p45_string.startIndex //String.Index型
let p45_endIndex = p45_string.endIndex//String.Index型

let p45_character = p45_string[p45_string.startIndex]//"a"
print(p45_character)
print(p45_string.endIndex.encodedOffset)//endIndexは最後の文字のインデックスではなく、次のインデックスを指している
//let p45_end_character = p45_string[p45_string.endIndex]//実行時エラー

//二番目の文字を取得
let p45_bIndex =  p45_string.index(p45_string.startIndex, offsetBy: 1)
let p45_b = p45_string[p45_bIndex]

//最後の文字列を取得
let p45_cIndex = p45_string.index(p45_string.endIndex, offsetBy: -1)
let p45_c = p45_string[p45_cIndex ]

//文字列数カウント
p45_string.count
for character in p45_string {
    print(character)
}


//数値型との相互変換
let p46_i = 123
let p46_s = String(p46_i)

let p46_s1 = "123"
let p46_i1 = Int(p46_s1)
let p46_s2 = "abc"
let p46_i2 = Int(p46_s2)//数値への変換が渡された場合には結果はnilとなる

//String 型とCharacter型の操作

// -文字列比較
let p47_string1 = "abc"
let p47_string2 = "def"
p47_string1 == p47_string2 //false
let p47_char1:Character = "a"
let p47_char2:Character = "b"
p47_char1 == p47_char2 //false

let p47_1_string :String = "A"
let p47_1_character:Character = "A"
//p47_1_string == p47_1_character //型不一致エラー
p47_1_string == String(p47_1_character)

// - 文字列結合
let p47_c = p47_string1 + p47_string2 //+演算子で文字列結合
print(p47_c)

var p47_str_a:String = "abc"
let p47_char_b:Character = "d"
p47_str_a.append(p47_char_b)//append(_:)メソッドを利用する事でString,Character型を結合可能

var p47_str_c = "abc"
let p47_str_d = "def"
p47_str_c.append(p47_str_d)
p47_str_c + p47_str_d


//====2.7 Array<Element>型
let p49_a = [1,2,3]
let p49_b = ["a","b","c"]
let p49_strings = ["a","b","c"]
let p49_numbers = [1,2,3]

//空の配列の場合には型アノテーションを明示する必要がある
let p50_array: [Int] = []
//配列リテラルが複数の型要素を含む場合も型アノテーションを追加して型を明示する
let p50_1_array:[Any] = [1,"a"]

//二次元配列の例
let p50_integerArrays = [[1,2,3],[4,5,6]]
//let p50_integers :[Int] = [1,2,3,"a"]//アノテーションにIntとしたのにString型の値を含めるとコンパイルエラーCompile Error


//Array<Element>型の操作
var p51_strings = ["abc","def","ghj"]// Index is 0,1,2
let p51_strings1 = p51_strings[0]
let p51_strings2 = p51_strings[1]
let p51_strings3 = p51_strings[2]
//let p51_strings4 = p51_strings[3]//範囲外のため実行時エラー
p51_strings[1] = "xyz" //既存の要素を更新
print(p51_strings)

var p51_integers = [1,2,3]
p51_integers.append(4)//配列に4を追加
print(p51_integers)
//任意の位置に要素を追加
p51_integers.insert(5, at: 1)//一番目に5を追加
print(p51_integers)

//配列の連結
let p52_int1 = [1,2,3]
let p52_int2 = [4,5,6]
let p52_result = p52_int1 + p52_int2

//要素の削除
var p53_int = [1,2,3,4,5]
p53_int.remove(at: 2)//二番目の要素を削除
print(p53_int)
p53_int.removeLast()//最後の要素(5)を削除
print (p53_int)
p53_int.removeAll()//全ての要素を削除
print(p53_int)



