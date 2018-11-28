//
//  ViewController.swift
//  CoffeMachine
//
//  Created by Mobiwolf on 11/28/18.
//  Copyright © 2018 Mobiwolf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageScreen: UILabel!
    let machine = Machine.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // start work
    }

    
    @IBAction func makeDrink(_ sender: UIButton) {
        if let value = Drink.init(rawValue: sender.tag){
            messageScreen.text = machine.makeDrink(drink: value)
        }
    }
    
    @IBAction func addProduct(_ sender: UIButton) {
        if let value = Ingridient.init(rawValue: sender.tag){
            messageScreen.text = machine.addToMachine(ingridient: value, count: 200)
        }
    }
    
    
}

