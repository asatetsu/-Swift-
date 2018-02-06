//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
//==== 2.9範囲型
// ..< は終了の値を含まない範囲を作る演算子
let p56_range = 1..<4 //CountableRange(1..<4)
for value in p56_range {
    print(value)
}

let p56_int_range : Range<Int> = 1..<4 //1以上４未満の範囲をあらわす

// ...は終了の値を含む範囲を作る演算子
let p57_range  = 1...4//1~4の値をあらわす
for value in p57_range {
    print(value)
}

let p57_1_range :ClosedRange<Int> = 1...5

//型推論
let p58_integerRange = 1..<3     //CountableRange<Int>型
let p58_doubleRange = 1.0..<3.0 //Range<Double>型
let p58_floatRange: Range<Float> = 1..<3 //Range<FLoat> 型

//境界に使用可能な型
//let p59_range = 1..<"a" //Int型とString型は別の方なのでコンパイルエラーCompileError

//範囲型の操作
let p59_range = 1.0..<4.0
p59_range.lowerBound //範囲の始点を返す
p59_range.upperBound //範囲の終点を返す


let p59_countableRange = 21..<24
p59_countableRange.lowerBound //21
p59_countableRange.upperBound //24

let p59_closedRange = 11.0...14.0
p59_closedRange.lowerBound//11
p59_closedRange.upperBound//14

let p59_countableClosedRange = 2...5
p59_countableClosedRange.lowerBound//2
p59_countableClosedRange.upperBound//5

//let p59_test  = 10...1 //不正な範囲を設定してみると実行時エラー

let p59_rangeThrough = ...3.0
p59_rangeThrough.upperBound
//p59_rangeThrough.lowerBound//lowerBoundは存在しないためcompile error

let p59_rangeUpTo = ..<3.0
p59_rangeUpTo.upperBound
//p59_rangeUpTo.lowerBound//lowerBoundは存在しないためcompile error

let p60_rangeFrom = 3.0...
p60_rangeFrom.lowerBound
//p60_rangeFrom.upperBound//upplerは存在しないためcompile error

let p60_countableRangeFrom = 3...
p60_countableRangeFrom.lowerBound
//p60_countableRangeFrom.upperBound//upperboundは存在しないためcompile error

//値が範囲に含まれるかどうかの判定
let p60_range = 1...4
p60_range.contains(2)//true
p60_range.contains(5)//false


