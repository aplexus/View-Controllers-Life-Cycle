//
//  ViewController.swift
//  View Controllers Life Cycle
//
//  Created by Aleksey Popov on 30/08/2019.
//  Copyright © 2019 Aleksey Popov. All rights reserved.
//

import UIKit
var output = String ()
var number = 0

class ViewController: UIViewController {
    
    let name = "ViewController"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        number += 1
        output += "\(number). \(name) - \(#function) \n"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        number += 1
        output += "\(number). \(name) - \(#function) \n"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.identifier as! SecondViewController
        vc.buttonOutput.text = output
    }
}

