protocol CanFly {
    // protocol methods don't have body
    func fly()
}

class Bird {
    var isFemale = true

    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func soar() {
        print("The eagle glides in the air using air currents. ")
    }

    // required by protocol
    func fly() {
        print("Eagle fly")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane fly")
    }
}

// protocol을 타입처럼 사용할 수 있다.
// class 상속보다 유연하게 사용할 수 있음
// 구조를 정의할 때 유용하게 사용할 수 있을 것 같음
// 여러개의 프로토콜을 사용할 수 있음
struct FlyigMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}
