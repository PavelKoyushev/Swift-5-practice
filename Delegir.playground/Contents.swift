import UIKit

protocol BakeryDelegate {
    func cookieWasBaked(cookie: Cookie)
}

protocol DeliveryDelegate {
    func getProduct(cookie: Cookie)
}

struct Cookie {
    var count: Int = 0
}

class Bakery {
    var delegate: BakeryDelegate?
 
    func makeCookie() {
        var cookie = Cookie()
            cookie.count = 10
        print("Печем печенье")
 
        delegate?.cookieWasBaked(cookie: cookie)
    }
}

class Delivery: BakeryDelegate {
    var delegate: DeliveryDelegate?
    
    func cookieWasBaked(cookie: Cookie) {
        print("Печенье готово: \(cookie.count). Можно отправлять в магазин!")
        
        delegate?.getProduct(cookie: cookie)
    }
}

class Shop: DeliveryDelegate{
    func getProduct(cookie: Cookie) {
        print("Печенье \(cookie.count) коробок получено!")
    }
}

let bakery = Bakery()
let delivery = Delivery()
let shop = Shop()

bakery.delegate = delivery

bakery.makeCookie()

