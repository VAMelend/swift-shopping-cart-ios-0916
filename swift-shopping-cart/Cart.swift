//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    
//    init(items:[Item]){
//        self.items = items}
    
    func totalPriceInCents()-> Int{
        var totalPriceInArr = 0
        //total cost of the items in the array
        for num in items{
            totalPriceInArr += num.priceInCents
        }
        return totalPriceInArr
    }
    
    func add(item:Item) {
        items.append(item)
    }
    
    func remove(item:Item) {
        items = items.filter{$0 != item}
    }
    
    func items(withName name: String)-> [Item]{
        var itemsArr = [Item]()
        for item in items{
            if item.name == name {
                itemsArr.append(item)
            }
            
        }
        return itemsArr
        
    }
    
    func items(withMinPrice price:Int) ->[Item]{
        var itemsNum: [Item] = []
        for item in items {
            if price <= item.priceInCents{
                itemsNum.append(item)
            }
        }
        return itemsNum
        }
    
    
    func items(withMaxPrice price:Int) ->[Item]{
        var itemsMax: [Item] = []
        for item in items {
            if price >= item.priceInCents {
                itemsMax.append(item)
            }
        }
        return itemsMax
        
        
    }
    

    }
    
    




