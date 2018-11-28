//
//  machine.swift
//  CoffeMachine
//
//  Created by Mobiwolf on 11/28/18.
//  Copyright © 2018 Mobiwolf. All rights reserved.
//

import UIKit

class Machine: NSObject {
    private var products = Dictionary<Ingridient,Int>()
    private var cookBook = Dictionary<Drink,Dictionary<Ingridient,Int>>()
    
    private func fillMachineCookBooks(){
        var coffeIngrifdients  = Dictionary<Ingridient,Int>()
        coffeIngrifdients[.cofeeBobs] = 10
        coffeIngrifdients[.sugar] = 10
        coffeIngrifdients[.water] = 100
        cookBook[.esspresso] = coffeIngrifdients
        
        var americanoIngrifdients  = Dictionary<Ingridient,Int>()
        americanoIngrifdients[.cofeeBobs] = 15
        americanoIngrifdients[.sugar] = 15
        americanoIngrifdients[.water] = 200
        cookBook[.americano] = americanoIngrifdients
        
        var capuchinoIngrifdients  = Dictionary<Ingridient,Int>()
        capuchinoIngrifdients[.cofeeBobs] = 10
        capuchinoIngrifdients[.sugar] = 10
        capuchinoIngrifdients[.water] = 200
        capuchinoIngrifdients[.milk] = 50
        cookBook[.capuchino] = capuchinoIngrifdients
    }
    
    override init() {
        super.init()
        fillMachineCookBooks()
    }
    
    func addToMachine(ingridient : Ingridient, count :Int) -> String {
        let oldVal = products[ingridient] ?? 0
        products[ingridient] =  oldVal + count
        return "В аппарате \(products[ingridient]!) грамов \(ingridient.toString())"
    }
    
    func makeDrink(drink : Drink) -> String {
        if let ingridients = cookBook[drink]{
            
            // control products in coffeMachine
            for (ingridient,ingridientNeedCount) in ingridients {
                let productCount = products[ingridient] ?? 0
                if (productCount<ingridientNeedCount){
                    return "Не можем приготовить \(drink.toString()) нет \(ingridient.toString())"
                }
            }
            
            // make the drink
            for (ingridient,ingridientNeedCount) in ingridients {
                    let productCount = products[ingridient]!
                products[ingridient] = productCount - ingridientNeedCount
                }
            
            return "Напиток \(drink.toString()) готов"
        } else {
            return "Этот аппарат не умеет готовить \(drink.toString())"
        }
        
    }

    

}
