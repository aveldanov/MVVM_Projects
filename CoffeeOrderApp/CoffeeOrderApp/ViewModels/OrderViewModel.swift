//
//  OrderViewModel.swift
//  CoffeeOrderApp
//
//  Created by Veldanov, Anton on 9/20/20.
//

import Foundation


class OrderListViewModel{
    var ordersViewModel: [OrderViewModel]
    
    init(){
        ordersViewModel = [OrderViewModel]()
    }
}

extension OrderListViewModel{
    func orderViewModel(at index: Int) -> OrderViewModel{
        return ordersViewModel[index]
    }
}


struct OrderViewModel{
    let order: Order
}



extension OrderViewModel{
    
    var name: String{
        return order.name
    }
    
    var email: String{
        return order.email
    }
    
    var type: String{
        return order.type.rawValue.capitalized
    }
    
    var size: String{
        return order.size.rawValue.capitalized
    }
    
}
