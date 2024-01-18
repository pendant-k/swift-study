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