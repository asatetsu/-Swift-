
//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//Any型の定数にString,Int型の値を代入
//代入する値が決まっていない場合に使用する
let p69_string:Any = "abc"
let p69_int:Any = 123

let p69_a:Any = 1
let p69_b:Any = 2

//Any型への代入による型損失
//p69_a + p69_b//Compile Error
//Any型からIntへのコンバート方法は？
//var x:Int? = p69_a as! Int


//===2.12 タプル型
//Int型とString型をまとめた(Int,String)型の変数p70_tupleを定義
var p70_tuple: (Int,String)
p70_tuple = (1,"a")
//インデックスによるアクセス
let p71_int = p70_tuple.0    //1
let p71_string = p70_tuple.1 //"a"

//要素名によるアクセス
//各要素に名前を付けて、その名前を通じて要素にアクセス
let p71_tuple = (int:1,string:"a")
let p71_1_int = p71_tuple.int //1
let p71_1_string = p71_tuple.string //"a"

//実験
let exp_tuple = (hoge:1,fuga:"fuga")
let exp_hoge:Int = exp_tuple.hoge
let exp_fuga:String = exp_tuple.fuga


//代入によるアクセス
//要素数分の変数や定数を（）内に、区切りで列挙したものにも代入可能
let p71_2_int:Int
let p71_2_string:String
(p71_2_int,p71_2_string) = (2,"b")
print(p71_2_int)
print(p71_2_string)

let (p71_3_int,p71_3_str) = (3,"C")
print(p71_3_int)
print(p71_3_str)

//Void型 （空のタプル）
//nilリテラルも値が存在しないことを示す
()//Void型　４.２章で別途説明あり

//===2.13 型のキャスト
let p72_a: Any = 1
let p72_isInt = p72_a is Int//true
print(p72_isInt)//p72_aがInt型かを出力

//アップキャスト
//クラスの継承やプロトコル準拠などの階層関係がある型どうしにおいて、階層の会となる具体的な方を上位の抽象的な方として扱う操作
let p73_any = "abc" as Any //String型をAny型にアップキャスト
//let p73_int = "abc" as Int//String 型はInt型を継承していないためcompile error

let p73_1_any:Any = "abcd"//String型からAny型への暗黙的なアップキャスト

//ダウンキャスト
//クラスの継承やプロトコルの準拠などの階層関係のある型同士において階層の上位となる抽象的な方を具体的な型として扱う操作
//as? ,as!の二種類が存在
//基本的にはas?演算子を使うべき
//as? 左辺の値を右辺の型へダウンキャストし失敗した場合にはnilとなる. 結果はOptional<Wrapped>型となる
//実行時エラーの可能性がないため安全だが、失敗を考慮したプログラムを書く必要あり
let p74_any = 1 as Any
let p74_int = p74_any as? Int//Optional(1)
let p74_string = p74_any as? Int//nil

//as!:強制キャスト左辺の値を右辺の型へダウンキャストし、失敗した場合は実行時エラーとなる
//実行時エラーの可能性がある為危険だが、失敗を考慮したプログラムを書く必要がない
let p74_1_any = 1 as Any
let p74_1_int = p74_any as! Int
//let p74_1_string = p74_1_any as ! String//実行時エラー












