//
//  SecondViewController.swift
//  View Controllers Life Cycle
//
//  Created by Aleksey Popov on 30/08/2019.
//  Copyright © 2019 Aleksey Popov. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

    let name = "SecondViewController"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number += 1
        output += "\(number). \(name) - \(#function) \n"
    }
    
    @IBOutlet weak var buttonOutput: UILabel!
    
    func update () {
        buttonOutput.text = output
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
        update()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
         update()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
         update()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
         update()
    }
}
