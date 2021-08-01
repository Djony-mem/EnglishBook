//
//  ListenAndAnswerViewController.swift
//  EnglishBook
//
//  Created by emmisar on 01.08.2021.
//

import UIKit
import MediaPlayer

class ListenAndAnswerViewController: UIViewController {
    
    @IBOutlet var answerButtons: [UIButton]!
    
    var showedWords: [Word] = []
    var questionWords: [Word] = []
    var questionWord: Word!
    
    var words = Word.getAllWords()
    //var category: Category!
    //var words: [Word] = []
    
    @IBOutlet weak var nextButton: UIButton!
    
    var player: AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //category.fillWordsArrayByCategory()
        //words = category.words!
        words.shuffle()
        
        questionWord = words.first
        playingSound(for: questionWord)
        
        fillQuestionWords()
        installImageButtons()
    }

    func installImageButtons(){
        questionWords.shuffle()
        for (button, question) in zip(answerButtons, questionWords) {
            button.setTitle(question.image, for: .normal)
        }
    
    }
    
    func fillQuestionWords(){
        showedWords.append(questionWord)
        
        questionWords.removeAll()
        questionWords.append(questionWord)
        while questionWords.count < 4 {
            guard let randomWord = words.randomElement() else {return}
            if randomWord == questionWord || questionWords.contains(randomWord){
                continue
            } else {
                questionWords.append(randomWord)
            }
        }
    }
    
    func clearBackgroundButtons() {
        for button in answerButtons {
            button.backgroundColor = .white
        }
    }
    
    @IBAction func clickAnswerAction(_ sender: UIButton) {
        if sender.title(for: .normal) == questionWord.image {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
    }
    
    @IBAction func nextWord(_ sender: Any) {

        if showedWords.count < words.count {
        questionWord = nil
            while questionWord == nil {
                let randomWord = words.randomElement()
                if showedWords.contains(randomWord!) {
                    continue
                } else {
                    questionWord = randomWord
                }
            }
        }

        fillQuestionWords()
        installImageButtons()
        clearBackgroundButtons()

        playingSound(for: questionWord)
        
        if showedWords.count == words.count {
            nextButton.isHidden = true
        }
    }
    
    @IBAction func listenSoundAction(_ sender: Any) {
        playingSound(for: questionWord)
    }
    
    func playingSound(for questionWord: Word) {
        if let soundName = questionWord.wordAndTranslte.values.first {
            if let soundURL = Bundle.main.path(forResource: soundName, ofType: "m4a") {
            player = AVPlayer(url: URL(fileURLWithPath: soundURL))
                
            player.play()
            }
        }
    }
}
