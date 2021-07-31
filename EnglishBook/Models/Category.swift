//
//  Category.swift
//  EnglishBook
//
//  Created by Максим Изварин on 31.07.2021.
//

import Foundation

struct Category {
    
    //MARK: - Public properties
    let name: String
    let image: String
    var words: [Word]?
    
    //MARK: - Public functions
    static func getAllCategories() -> [Category] {
        var categoriesList: [Category] = []
        for category in DataManager.dataManager.categories {
            categoriesList.append(Category(name: category.category, image: category.image, words: nil))
        }
        return categoriesList
    }
    
    mutating func fillWordsArrayByCategory() {
        for word in DataManager.dataManager.words {
            if word.category == name {
                let wordForAppend = Word(wordAndTranslte: word.word, image: word.image)
                self.words?.append(wordForAppend)
            }
        }
    }
}
