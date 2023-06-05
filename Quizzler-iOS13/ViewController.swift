//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
// Modified by Abu Sayeed Roni on May 10, 2023

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quizes = [
        "Four + two is equal to six.",
        "Five - three is greater than one.",
        "Three + Eight is less than ten."
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // Get the next question number.
        questionNumber = (questionNumber + 1) % quizes.count
        
        // Update the question based on the current question number.
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quizes[questionNumber]
        
        // Calculate the progress percentage.
        let progress = Float(questionNumber) / Float(quizes.count)
        
        // Update the progress bar.
        progressBar.progress = progress
    }
}

