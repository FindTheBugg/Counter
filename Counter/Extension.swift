//
//  Extension.swift
//  Counter
//
//  Created by vadim on 01.04.2025.
//
import UIKit

extension Date {
    var toJustTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MM yy HH:mm:ss"
        return dateFormatter.string(from: self)
    }
}


