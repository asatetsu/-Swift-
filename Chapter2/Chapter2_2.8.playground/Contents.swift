//: Playground - noun: a place where people can play
//2.8 Dictionary<Key,Value>型
import Cocoa

var str = "Hello, playground"
let p52_dictionalry = ["a":1,"b":2]

let p52_blank_dictionary: [String:Int] = [:]//要素が一つもなくキーや値に複数の方が混在する場合のレテラル例
let p53_array = ["even":[2,4,6.8],"odd":[1,3,5,7,9]]
//let p54_dictionary:[String:Int] = [
//                                    1:2, //キーの異なるためコンパイルエラー
//                                    "key","value"]//valueがString型のためエラー

let p54_1_dictionary = ["key":1]//[String:Int]型
let p54_1_value = p54_1_dictionary["key"]

let p54_2_dictionary = ["key1":"value1"]
let p54_valueForKey1Exists = p54_2_dictionary["key1"] != nil //key1は存在しているのでnilではないのでtrue
let p54_valueForKey2Exists = p54_2_dictionary["key2"] != nil //key2は存在しないのでnilとなるため

//更新
var p53_dictionary = ["key":1]
p53_dictionary["key"] = 2//keyを２に更新
print(p53_dictionary)

//追加
var p53_dictionary2 = ["key1":1]
p53_dictionary2["key2"] = 2//key2:2を追加
print(p53_dictionary2)

//削除
var p53_dictionary3 = ["key":1]
p53_dictionary3["key"] = nil//keyを削除
print(p53_dictionary3)
