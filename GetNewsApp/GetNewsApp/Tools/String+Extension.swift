//
//  String+Extension.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
    
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}

