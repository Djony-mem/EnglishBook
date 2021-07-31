//
//  DataManager.swift
//  EnglishBook
//
//  Created by Максим Изварин on 31.07.2021.
//

class DataManager {
    
    //MARK:- Public properties
    static let dataManager = DataManager()
    
    let categories: [(category: String, image: String)] = [
    (category:"Спорт", image: "⚽️"),
    (category: "Профессии", image: "👨‍💻"),
    (category:"Животные", image: "🐶"),
    (category: "Хобби", image: "🎸")
    ]
    
    let words: [(word: [String: String],image: String, category: String, transcription: String)] = [
        (word: ["Футбол" : "Football"], image: "⚽️", category: "Спорт", transcription: "Futbol"),
        (word: ["Волейбол" : "Volleyball"], image: "🏐", category: "Спорт", transcription: "Voleybol"),
        (word:["Баскетбол" : "Basketball"], image: "⛹️", category: "Спорт", transcription: "Basketbol"),
        (word: ["Настольный теннис" : "Table tennis"], image:"🏓", category: "Спорт", transcription: "ˈtābəl ˌtenəs"),
        (word:["Бокс" : "Boxing"], image: "🥊", category: "Спорт", transcription: "ˈbäksiNG"),
        (word: ["Плавание" : "Swimming"], image: "🏊‍♀️", category: "Спорт", transcription: "ˈswimiNG"),
        
        (word: ["Полицейский" : "Policeman"], image: "👮‍♀️", category: "Профессии", transcription: "pəˈlēsmən"),
        (word: ["Врач" : "Doctor"], image: "👩‍⚕️", category: "Профессии", transcription: "ˈdäktər"),
        (word:["Программист" : "Programmer"], image: "👨‍💻", category: "Профессии", transcription: "ˈprōˌɡramər"),
        (word: ["Строитель" : "Builder"], image:"👷‍♀️", category: "Профессии", transcription: "ˈbildər"),
        (word:["Повар" : "Cook"], image: "👩‍🍳", category: "Профессии", transcription: "ko͝ok"),
        (word: ["Санта-Клаус" : "Santa"], image: "🎅", category: "Профессии", transcription: "Santa"),
        
        (word: ["Собака" : "Dog"], image: "🐶", category: "Животные", transcription: "dôɡ"),
        (word: ["Кот" : "Cat"], image: "🐱", category: "Животные", transcription: "kat"),
        (word:["Лиса" : "Fox"], image: "🦊", category: "Животные", transcription: "fäks"),
        (word: ["Мышь" : "Mouse"], image:"🐭", category: "Животные", transcription: "mouse"),
        (word:["Медведь" : "Bear"], image: "🐻", category: "Животные", transcription: "ber"),
        (word: ["Кролик" : "Rabbit"], image: "🐰", category: "Животные", transcription: "ˈrabət"),
        
        
        (word: ["Игра на гитаре" : "Playing guitar"], image: "🎸", category: "Хобби", transcription: "Igrat' na gitare"),
        (word: ["Рисование" : "Drawing"], image: "🎨", category: "Хобби", transcription: "ˈdroiNG"),
        (word:["Езда на велосипеде" : "Bicycle riding"], image: "🚲", category: "Хобби", transcription: "bicycle riding"),
        (word: ["Пение" : "Singing"], image:"🎤", category: "Хобби", transcription: "ˈsiNGiNG"),
        (word:["Чтение книг" : "Reading of books"], image: "📚", category: "Хобби", transcription: "Reading of books"),
        (word: ["Слушать музыку" : "Listen to music"], image: "🎧", category: "Хобби", transcription: "Listen to music")
        
    ]

    //MARK: - Init
    private init () {}
}
