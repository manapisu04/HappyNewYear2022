//
//  ContentViewModel.swift
//  HappyNewYear2022
//
//  Created by cmStudent on 2021/12/31.
//

import Foundation

class ContentViewModel:ObservableObject {
    @Published var message = "年越しまだまだ"
    
    init() {
        dateChecker()
    }
    
    func dateChecker() {
        let calendar = Calendar(identifier: .gregorian)
        let date = Date()
        let year = calendar.component(.year, from: date)
        
        if year == 2022 {
            message = "Happy New Year 2022"
        } else if year > 2022 {
            message = "2022年は終わったのだ"
        } else if year < 2022 {
            return
        }
    }
}
