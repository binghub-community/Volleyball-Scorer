//
//  ViewController.swift
//  Volleyball Scoreboard
//
//  Created by Marvin Yu on 12/8/20.
//  Copyright © 2020 Marvin Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var team1_name: UITextField!
    @IBOutlet var team2_name: UITextField!
    
    @IBOutlet var team1_stepper: UIStepper!
    @IBOutlet var team2_stepper: UIStepper!
    
    
    
    @IBOutlet var team1_score_label: UILabel!
    @IBAction func team1_stepper(_ sender: UIStepper) {
        team1_score_label.text = String(Int((sender.value)))
    }
    
    @IBOutlet var team2_score_label: UILabel!
    @IBAction func team2_stepper(_ sender: UIStepper) {
        team2_score_label.text = String(Int((sender.value)))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
    }


    @IBAction func resetButton(_ sender: UIButton) {
        team1_score_label.text = String(0)
        team1_stepper.value = 0
        team2_score_label.text = String(0)
        team2_stepper.value = 0
    }
    
    @IBAction func resetAllButton(_ sender: UIButton) {
        team1_name.text = ""
        team2_name.text = ""
        team1_score_label.text = String(0)
        team1_stepper.value = 0
        team2_score_label.text = String(0)
        team2_stepper.value = 0

    }
    
}

