//
//  Word.swift
//  EnglishBook
//
//  Created by Максим Изварин on 31.07.2021.
//

struct Word {
    
    //MARK: - Pivate properties
    let wordAndTranslte: [String : String]
    let image: String
    let transcription: String
    
    //MARK: - Public functions
    static func getAllWords() -> [Word] {
        var words: [Word] = []
        for word in DataManager.dataManager.words {
            let wordForAppend = Word(wordAndTranslte: word.word, image: word.image, transcription: word.transcription)
            words.append(wordForAppend)
        }
        return words
    }
}
