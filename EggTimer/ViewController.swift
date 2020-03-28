//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlet

    var typeOfEgg = ["Soft": 7, "Medium": 10, "Hard": 12]


    //MARK: IBAction
    @IBAction func keyPressed(_ sender: UIButton) {

        let hardness = sender.currentTitle!

        switch hardness {
        case "Soft":
            print(typeOfEgg["Soft"]!)
        case "Medium":
            print(typeOfEgg["Medium"]!)
        case "Hard":
            print(typeOfEgg["Hard"]!)
        default:
            print("Error message")
        }
    }
}
