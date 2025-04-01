//
//  ViewController.swift
//  Counter
//
//  Created by vadim on 31.03.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resetImage: UIImageView!
    @IBOutlet weak var plusImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var minusImage: UIImageView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    private var valueTapped: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minusImage.tintColor = .blue
        resetImage.tintColor = .gray
        plusImage.tintColor = .red
        
        textLabel.text = "0"
        textView.isScrollEnabled = true
        textView.isEditable = false
        textView.backgroundColor = .brown
        textView.layer.cornerRadius = 12
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        let range = NSRange(location: textView.text.count - 1, length: 1)
            textView.scrollRangeToVisible(range)
        
        let currentDate = Date()
        
        valueTapped += 1
        textView.text.append("\(currentDate.toJustTime): значение счетчика изменено на +1\n")
        textView.text.append(" \n")
        textLabel.text = "История изменений: \(String(valueTapped))"
    }
    
    @IBAction func resetTupped(_ sender: Any) {
        let currentDate = Date()
        
        textView.text = "\(currentDate.toJustTime): значение сброшено \n"
        textView.text.append(" \n")
        valueTapped = 0
        textLabel.text = "0"
    }
    
    @IBAction func minusTapped(_ sender: Any) {
        let range = NSRange(location: textView.text.count - 1, length: 1)
            textView.scrollRangeToVisible(range)
        
        let currentDate = Date()
        
        if valueTapped < 1 {
            textView.text.append("\(currentDate.toJustTime):\n попытка уменьшить значение счётчика ниже 0 \n")
            textView.text.append(" \n")
        } else {valueTapped -= 1
            textView.text.append("\(currentDate.toJustTime): значение счетчика изменено на -1\n")
            textView.text.append(" \n")
            textLabel.text = "История изменений: \(String(valueTapped))"
        }

    }
    
    
}


