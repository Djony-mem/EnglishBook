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
    
    @IBOutlet weak var labelsStackView: UIStackView!
    @IBOutlet weak var buttonsStackView: UIStackView!
    
    // MARK: - Public Properties
    
    // Временный переменные
    let category = "Transport"
    let engWord = "Train"
    let emoji = "🚂"
    
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
        for button in buttonsStackView.arrangedSubviews {
            buttonsStackView.removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        currentLetter = 0
        wordLabels = []
        categoryLabel.text = category
        emojiLabel.text = emoji
        createLabels(numberOfLabels: wordSpelling.count)
        createButtons(numberOfButtons: wordSpelling.count)
    }
    
    // MARK: - Private Methods
    private func createLabels(numberOfLabels: Int) {
        for _ in 0..<numberOfLabels {
            let label = UILabel()
            label.text = "_"
            wordLabels.append(label)
            labelsStackView.addArrangedSubview(label)
        }
    }
    
    private func createButtons(numberOfButtons : Int) {
        let buttonsLabels = wordSpelling.shuffled()
        for buttonIndex in 0..<numberOfButtons {
            let button = UIButton()
            button.setTitle(buttonsLabels[buttonIndex], for: .normal)
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            buttonsStackView.addArrangedSubview(button)
        }
    }
    
    @objc private func buttonAction(sender: UIButton) {
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
                }
                return
            }
            for wordLabel in wordLabels {
                wordLabel.textColor = .green
            }
        }
    }
    
}
