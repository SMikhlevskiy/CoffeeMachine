//
//  ingridients.swift
//  CoffeMachine
//
//  Created by Mobiwolf on 11/28/18.
//  Copyright © 2018 Mobiwolf. All rights reserved.
//

import UIKit

enum Ingridient : Int {
case water = 1
case milk = 2
case cofeeBobs = 3
case sugar = 4
    
    func toString() -> String {
        switch self {
            case .water: return "Вода"
            case .milk: return "Молоко"
            case .cofeeBobs: return  "Кофейные зерна"
            case .sugar: return "Сахар"
        }
    }
}
