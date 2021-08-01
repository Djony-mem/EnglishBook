//
//  ChooseCategoryViewController.swift
//  EnglishBook
//
//  Created by Maria Berger on 31.07.2021.
//

import UIKit

class ChooseCategoryViewController: UIViewController {


    @IBOutlet weak var doTestButton: UIButton!
    
    @IBOutlet weak var animalsButton: UIButton!
    @IBOutlet weak var jobButton: UIButton!
    @IBOutlet weak var hobbyButton: UIButton!
    @IBOutlet weak var sportButton: UIButton!
    
    var categories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doTestButton.layer.cornerRadius = 20
        doTestButton.frame.size = CGSize(width: 255.0, height: 95.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        categories = Category.getAllCategories()
    }
    
    // MARK: - IBActions
    
    @IBAction func chosenAnimals(_ sender: UIButton) {
        var animalsCategory = Category(name: "Животные", image: "🐶")
        animalsCategory.fillWordsArrayByCategory()
        
    }

    @IBAction func chosenJob(_ sender: UIButton) {
        var jobsCategory = Category(name: "Профессии", image: "👨‍💻")
        jobsCategory.fillWordsArrayByCategory()
    }

    @IBAction func chosenSports(_ sender: UIButton) {
        var sportCategory = Category(name: "Спорт", image: "⚽️")
        sportCategory.fillWordsArrayByCategory()
    }

    @IBAction func chosenHobbies(_ sender: UIButton) {
        var hobbiesCategory = Category(name: "Хобби", image: "🎸")
        hobbiesCategory.fillWordsArrayByCategory()
    }
    

     //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let _ = segue.destination as? LearningTypeViewController
    }
}

