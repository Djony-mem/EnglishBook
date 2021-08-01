//
//  CollectFromLettersViewController.swift
//  EnglishBook
//
//  Created by Sergey on 01.08.2021.
//

import UIKit

class CollectFromLettersViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var correctAnswerLabel: UILabel!
    
    @IBOutlet weak var labelsStackView: UIStackView!
    @IBOutlet weak var buttonsStackViewFirst: UIStackView!
    @IBOutlet weak var buttonsStackViewSecond: UIStackView!
    
    // MARK: - Public Properties
    
    // Временный переменные
    let category = "Хобби"
    let engWord = "Reading of books"
    let emoji = "📚"
    
    // MARK: - Private Properties
    private var wordSpelling: [String] = []
    private var currentLetter = 0
    private var wordLabels: [UILabel] = []
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nextWordButtonTapped()
    }
    
    // MARK: - IBActions
    @IBAction func nextWordButtonTapped() {
        let uppercasedWord = engWord.uppercased()
        wordSpelling = uppercasedWord.map {String($0)}
        for label in labelsStackView.arrangedSubviews {
            labelsStackView.removeArrangedSubview(label)
            label.removeFromSuperview()
        }
        for button in buttonsStackViewFirst.arrangedSubviews {
            buttonsStackViewFirst.removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        for button in buttonsStackViewSecond.arrangedSubviews {
            buttonsStackViewSecond.removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        correctAnswerLabel.isHidden = true
        buttonsStackViewFirst.isHidden = false
        currentLetter = 0
        wordLabels = []
        categoryLabel.text = category
        emojiLabel.text = emoji
        createLabels(numberOfLabels: wordSpelling.count)
        createButtons(numberOfButtons: wordSpelling.count)
    }
    
    // MARK: - Private Methods
    private func createLabels(numberOfLabels: Int) {
        for currentLabel in 0..<numberOfLabels {
            let label = UILabel()
            label.addConstraint(NSLayoutConstraint(item: label,
                                                   attribute: .width,
                                                   relatedBy: .equal,
                                                   toItem: nil,
                                                   attribute: .notAnAttribute,
                                                   multiplier: 1,
                                                   constant: 12))
            if wordSpelling[currentLabel] == " " {
                label.text = " "
            } else {
                label.text = "_"
            }
            wordLabels.append(label)
            labelsStackView.addArrangedSubview(label)
        }
    }
    
    private func createButtons(numberOfButtons : Int) {
        var buttonsLabels = wordSpelling.shuffled()
        buttonsLabels = buttonsLabels.filter {$0 != " "}
        for buttonIndex in 0..<buttonsLabels.count {
            let button = UIButton()
            button.setTitle(buttonsLabels[buttonIndex], for: .normal)
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            if buttonsLabels.count > 6 {
                if buttonIndex < (buttonsLabels.count / 2) {
                    buttonsStackViewFirst.addArrangedSubview(button)
                } else {
                    buttonsStackViewSecond.addArrangedSubview(button)
                }
            } else {
                buttonsStackViewFirst.addArrangedSubview(button)
            }
        }
    }
    
    @objc private func buttonAction(sender: UIButton) {
        if wordSpelling[currentLetter] == " " {
            currentLetter += 1
        }
        if currentLetter < wordSpelling.count - 1 {
            wordLabels[currentLetter].text = sender.currentTitle
            currentLetter += 1
        } else {
            wordLabels[currentLetter].text = sender.currentTitle
            checkWord()
        }
        sender.isHidden = true
    }
    
    private func checkWord() {
        for index in 0..<wordLabels.count {
            if wordLabels[index].text != wordSpelling[index] {
                for wordLabel in wordLabels {
                    wordLabel.textColor = .red
                    buttonsStackViewFirst.isHidden = true
                    correctAnswerLabel.isHidden = false
                    correctAnswerLabel.text = "Правильный ответ:\n\(engWord.uppercased())"
                }
                return
            }
            for wordLabel in wordLabels {
                wordLabel.textColor = .green
                buttonsStackViewFirst.isHidden = true
                correctAnswerLabel.isHidden = false
                correctAnswerLabel.text = "Верно!"
            }
        }
    }
    
}
