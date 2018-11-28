//
//  Drink.swift
//  CoffeMachine
//
//  Created by Mobiwolf on 11/28/18.
//  Copyright © 2018 Mobiwolf. All rights reserved.
//

import UIKit

enum Drink : Int {
    case esspresso = 1
    case americano = 2
    case capuchino = 3
    
    func toString() -> String{
        switch (self) {
            case .esspresso: return "Эспрессо"
            case .americano: return "Американо"
            case .capuchino: return "Капучино"
        }
    }
}
