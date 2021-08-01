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
    
    
    private var datamanager = DataManager.dataManager
    var categories = [Category]()
    var words = [Word]()
    
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
        let animalWord: () = animalsCategory.fillWordsArrayByCategory()
        var animalsArray: [Any] = []
        animalsArray.append(animalWord)
        
    }

    @IBAction func chosenJob(_ sender: UIButton) {
        var jobsCategory = Category(name: "Профессии", image: "👨‍💻")
        let jobsWord: () = jobsCategory.fillWordsArrayByCategory()
        var jobsArray: [Any] = []
        jobsArray.append(jobsWord)
    }

    @IBAction func chosenSports(_ sender: UIButton) {
        var sportCategory = Category(name: "Спорт", image: "⚽️")
        let sportWord:  () = sportCategory.fillWordsArrayByCategory()
        var sportArray: [Any] = []
        sportArray.append(sportWord)
    }

    @IBAction func chosenHobbies(_ sender: UIButton) {
        var hobbiesCategory = Category(name: "Хобби", image: "🎸")
        let hobbiesWord: () = hobbiesCategory.fillWordsArrayByCategory()
        var hobbiesArray: [Any] = []
        hobbiesArray.append(hobbiesWord)
    }
    

     //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let _ = segue.destination as? LearningTypeViewController
    }
}

