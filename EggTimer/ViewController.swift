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
    @IBOutlet weak var countDownLabel: UILabel!

    var counter = 60
    var timer = Timer()

    func timeCalculation(timeInMinutes: Int) -> Int{
        return timeInMinutes * 60
    }

    //MARK: Declaration
    var eggTimes = ["Soft": 7, "Medium": 10, "Hard": 12]

    //MARK: IBAction
    @IBAction func keyPressed(_ sender: UIButton) {

        timer.invalidate()

        let hardness = sender.currentTitle! // Soft, Medium, Hard
        counter = timeCalculation(timeInMinutes: eggTimes[hardness]!)

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

    @objc func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds.")
            countDownLabel.text = String("\(counter) sec")
            counter -= 1
        } else {
            timer.invalidate()
            countDownLabel.text = "DONE"
        }
    }
}


