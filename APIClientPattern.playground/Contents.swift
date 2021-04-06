import UIKit

// 今までのAPIのdeocodeパターン
protocol TranrateModelType {
    static func tranrate() -> Self
}

struct Baseball: TranrateModelType {
    var japaneseName: String

    static func tranrate() -> Baseball {
        return Baseball(japaneseName:"野球")
    }
}

struct Soccer: TranrateModelType {
    var japaneseName: String

    static func tranrate() -> Soccer {
        return Soccer(japaneseName: "蹴球")
    }
}

func apiClient<T: TranrateModelType>() -> T {
    return T.tranrate()
}

let baseball: Baseball = apiClient()
let soccer: Soccer = apiClient()

print(baseball.japaneseName)
print(soccer.japaneseName)
