//
//  LearningWayViewController.swift
//  EnglishBook
//
//  Created by Maria Berger on 31.07.2021.
//

import UIKit

class LearningTypeViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var dictionaryButton: UIButton!
    @IBOutlet weak var chooseTranslationButton: UIButton!
    @IBOutlet weak var listenButton: UIButton!
    @IBOutlet weak var makeWordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK: - IBActions
    
    @IBAction func dictionaryIsChosen(_ sender: UIButton) {
    }
    @IBAction func translationIsChosen(_ sender: UIButton) {
    }
    @IBAction func listenIsChosen(_ sender:UIButton) {
    }
    
    @IBAction func makeWordIsChosen(_ sender: UIButton) {
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}

