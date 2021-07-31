//
//  LearningType.swift
//  EnglishBook
//
//  Created by Максим Изварин on 31.07.2021.
//

import Foundation

enum LearningType : String {
    case dictionary = "Словарь"
    case chooseTranslate = "Выберите перевод"
    case listening = "Прослушайте и выберите перевод"
    case collectWordFromLetters = "Соберите слово из букв"
    var image: String {
        switch self {
        case .dictionary:
            return "📕"
        case .chooseTranslate:
            return "🧩"
        case .listening:
            return "🎼"
        case .collectWordFromLetters:
            return "📝"
        }
    }
}
