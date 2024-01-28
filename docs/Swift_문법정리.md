# Swift 문법 정리

### 변수 생성
```Swift
// : 뒤에는 타입이 온다.
var place: String
```

### Types
- Array
```Swift
var foods: [String] = ["eggs","bananas","beans"]
```
- Set
```Swift
var jazzs: Set<String> = ["bibidudu","labdap","dididudu"]
```
- Dictionary
`키:값` 형태

```Swift
var frEngDict: [String:String] = ["Je":"I","Tu":"You"]
```


### Set
- Array랑 유사하지만 순서가 존재하지 않음
- 중복 제거
```Swift
let musics: Set<String> = ["Rock","Jazz","Classical"]
```

### struct vs class
- 구조체는 call by value
- class는 call by reference

### ObservableObject
- 관찰이 가능한 객체임을 나타냄
- class에서 사용함

### Enum
```Swift
enum Status: String {
    case initial
    case loading
    case success
    case failure
}

// currentStatus.loading
var currentStatus: Status = .loading
```

### Function
Swift의 기본적인 함수
```Swift
// Create with func keyword
// param name : type
// return type : -> type
func getMilk(money: Int) -> Int {
    let change = money - 2
    return change
}
```

### Closures
- Closures are slef-contained blocks of functionality that can be passed around and used in your code.
- Swift에서의 익명 함수, 콜백 함수를 작성할 때 활용하기 좋다.

**Syntax**
```Swift
{(parameters) -> return type in
    statements
} 
```

**Closure 예제**
```Swift
// calculator Example

// get operation call back function and return its result (Int)
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1,n2)
}

func sum (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

// calculator(n1: 2, n2: 3, operation: sum)
```

```Swift
calculator(n1: 2, n2: 3, operation: {(no1, no2) in no1 * no2})

// 익명 parameter 사용가능
// $0, $1

let result = calculator(n1: 2, n2: 3, operation: {$0 * $1})
print (result)
// If last param is closure
// We can use closure trailing
let result2 = calculator(n1: 2, n2: 3) {$0 * $1}
```

- 코드를 단순하게 만들기 좋다.
- 코드의 이해가 어려워질 수 있음. (가독성 저하)

**주로 사용되는 예제**
- array 등의 자료형과 많이 사용될 수 있다. (열거된 element마다 접근하여 특정 함수 실행 시나리오 잦음)

```Swift
//map method에서의 예제
let array = [6,2,3,9,4,1]
print(array.map{$0 + 1})

// stringify
// Convert [Int] into [String]
let newArray = array.map{\($0)}
print(newArray)
```