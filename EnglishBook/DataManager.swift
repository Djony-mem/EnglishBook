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
    
    let words: [(word: [String: String],image: String, category: String)] = [
        (word: ["Футбол" : "Football"], image: "⚽️", category: "Спорт"),
        (word: ["Волейбол" : "Volleyball"], image: "🏐", category: "Спорт"),
        (word:["Баскетбол" : "Basketball"], image: "⛹️", category: "Спорт"),
        (word: ["Настольный теннис" : "Table tennis"], image:"🏓", category: "Спорт"),
        (word:["Бокс" : "Boxing"], image: "🥊", category: "Спорт"),
        (word: ["Плавание" : "Swimming"], image: "🏊‍♀️", category: "Спорт"),
        
        (word: ["Полицейский" : "Policeman"], image: "👮‍♀️", category: "Профессии"),
        (word: ["Врач" : "Doctor"], image: "👩‍⚕️", category: "Профессии"),
        (word:["Программист" : "Programmer"], image: "👨‍💻", category: "Профессии"),
        (word: ["Строитель" : "Builder"], image:"👷‍♀️", category: "Профессии"),
        (word:["Повар" : "Cook"], image: "👩‍🍳", category: "Профессии"),
        (word: ["Санта-Клаус" : "Santa🎅"], image: "", category: "Профессии"),
        
        (word: ["Собака" : "Dog"], image: "🐶", category: "Животные"),
        (word: ["Кот" : "Cat"], image: "🐱", category: "Животные"),
        (word:["Лиса" : "Fox"], image: "🦊", category: "Животные"),
        (word: ["Мышь" : "Mouse"], image:"🐭", category: "Животные"),
        (word:["Медведь" : "Bear"], image: "🐻", category: "Животные"),
        (word: ["Кролик" : "Rabbit"], image: "🐰", category: "Животные"),
        
        
        (word: ["Игра на гитаре" : "Playing guitar"], image: "🎸", category: "Хобби"),
        (word: ["Рисование" : "Drawing"], image: "🎨", category: "Хобби"),
        (word:["Езда на велосипеде" : "Bicycle riding"], image: "🚲", category: "Хобби"),
        (word: ["Пение" : "Singing"], image:"🎤", category: "Хобби"),
        (word:["Чтение книг" : "Reading of books"], image: "📚", category: "Хобби"),
        (word: ["Слушать музыку" : "Listen to music"], image: "🎧", category: "Хобби")
        
    ]

    //MARK: - Init
    private init () {}
}
