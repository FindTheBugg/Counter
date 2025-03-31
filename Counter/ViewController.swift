//
//  ViewController.swift
//  Counter
//
//  Created by vadim on 31.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  var buttonTapped: UIButton!
    @IBOutlet  var viewShowTapped: UILabel!
    
    private var valueTapped = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewShowTapped.text = String(valueTapped)
        buttonTapped.setTitle("Посчитать нажатие", for: .normal)
        
        viewShowTapped.tintColor = .gray
        buttonTapped.tintColor = .gray
        
    }

    @IBAction func ButtonTapped(_ sender: Any) {
        valueTapped += 1
        viewShowTapped.text = "Значение счетчика: \(String(valueTapped))"
    }
    
}

