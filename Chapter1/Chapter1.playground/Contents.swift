//: Playground - noun: a place where people can play

//import UIKit

var str = "Chapter 1"

//P3
var a:Int
a = 456
//a = "abc"//String 型の代入でコンパイルエラー Compile Error
//型安全性：型謝りをコンパイル時に検出するため、実行時には予期せぬ型による不正動作が怒らない安全性が保証されている

// nilの許容性をコントロール
let opt_a:Optional<Int>
let int_b: Int
opt_a = nil // Optional<Wrapped>型はnilを許容する
//int_b = nil // Int型はnilを許容しない型　Compile Error

//P4
//型推論：代入する値などからコンパイラが型を推測できる場合には、宣言時にその型を明示する必要がない
let p4_a = 123 //Int型
let p4_b = "abc" // String 型

//p4-p
//ジェネリクスによる汎用的な記述
//func max<T: Comparable(_ x:T,_ y:T> _は引き数名がない事を表す
// 宣言にいずれも同じ方Tがちえ擬されているため、x、yは型が一致している必要がある
let p5_int_x = 123
let p5_int_y = 456
let p5_int_z = max(p5_int_x,p5_int_y)

let p5_str_x = "abc"
let p5_str_y = "xyz"
let p5_str_z = max(p5_str_x,p5_str_y)

