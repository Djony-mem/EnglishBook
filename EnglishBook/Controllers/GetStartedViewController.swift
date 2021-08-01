//
//  GetStartedViewController.swift
//  EnglishBook
//
//  Created by Maria Berger on 31.07.2021.
//

import UIKit

class GetStartedViewController: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getStartedButton.layer.cornerRadius = 20
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let _ = segue.destination as? ChooseCategoryViewController
    }
}
