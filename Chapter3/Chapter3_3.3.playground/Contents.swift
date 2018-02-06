//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// 3.3 繰り返し

//Array Element型の要素をfor-in文で列挙する
let p90_array = [1,2,3]
for element in p90_array {
    print(element)
}

//Dictionary<Key,Value>型の要素をfor-inで列挙する例
//要素の順序は保証されていない
let p91_dictionary = ["a":1,"b":2]
for (key,value) in p91_dictionary {
    print("Key:\(key) Value:\(value)")
}
