//
//  Word.swift
//  EnglishBook
//
//  Created by Максим Изварин on 31.07.2021.
//

struct Word {
    
    //MARK: - Pivate properties
    private let wordAndTranslte: [String : String]
    private let image: String
    
    //MARK: - Public functions
    static func getAllWords() -> [Word] {
        var words: [Word] = []
        for word in DataManager.dataManager.words {
            let wordForAppend = Word(wordAndTranslte: word.word, image: word.image)
            words.append(wordForAppend)
        }
        return words
    }
}
