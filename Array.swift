import Foundation
import UIKit

let arr1 = [1,2,3,4,5]

do {
  print("[ありがちなfor]")
  for v in arr1 {
    print(v)
  }
}

print()

do {
  print("[forEach]")
  arr1.forEach { (v) in
    print(v)
  }
}

print()

do {
  print("[filter]")
  let arr2 = arr1.filter { (v) -> Bool in
    v % 2 == 0
  }

  for v in arr2 {
    print(v)
  }
}

print()

do {
  print("[配列操作のメソッドチェーン filter->forEach]")
  arr1.filter { (v) -> Bool in
    v % 2 == 0
  }.forEach { (v) in
    print(v)
  }
}

print()


do {
  print("[map]")

  let arr2 = arr1.map { (v) -> String in
    String(v) + "です"
  }

  for v in arr2 {
    print(v)
  }
}

print()

do {
  print("[reduce]")

  let v = arr1.reduce("") { (result, v) -> String in
    result + "\(v)です, "
  }
  print(v)
}

print()


struct User {
  var id: Int = 0
  var name: String = ""

  func say() {
    print("id: \(id), name: \(name)")
  }
}

do {
  print("[実践的な組み合わせ filter -> map]")
  let users = arr1.filter { (v) -> Bool in
    v % 2 == 0
  }.map { (v) -> User in
    User(id: v, name: "偶数\(v)です")
  }

  for user in users {
    user.say()
  }
}

print()

do {
  print("[省略記法]")
  arr1.filter { $0 % 2 == 0 }.forEach { print($0) }

  arr1
    .filter{ $0 % 2 != 0 }
    .map{ User(id: $0, name: "奇数\($0)です") }
    .forEach { $0.say() }
}

print()



do {
  print("[辞書も操作]")

  let dic1 = [0:"japan", 20:"america", 90: "france"]

  let arr: [String] = dic1.map { (arg) -> String in
    arg.value
  }

  for v in arr {
    print(v)
  }
}
