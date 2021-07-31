//
//  LearningType.swift
//  EnglishBook
//
//  Created by Максим Изварин on 31.07.2021.
//

import Foundation

enum LearningType {
    case dictionary, chooseTranslate, listening, collectWordFromLetters
    var image: String {
        switch self {
        case .dictionary:
            return "📕"
        case .chooseTranslate:
            return "🧩"
        case .listening:
            return "🎼"
        case .collectWordFromLetters:
            return "␂"
        }
    }
    var description: String {
        switch self {
        case .dictionary:
            return "Словарь"
        case .chooseTranslate:
            return "Выберите перевод"
        case .listening:
            return "Прослушайте и выберите перевод"
        case .collectWordFromLetters:
            return "Соберите слово из букв"
        }
    }
}
