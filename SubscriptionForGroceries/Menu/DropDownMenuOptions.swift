//
//  DropDownMenuOptions.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 25.05.2023.
//

import Foundation

struct DropDownMenuOption: Identifiable, Hashable {
    let id = UUID().uuidString
    let option: String
}

extension DropDownMenuOption {
    static let testSingleMonth: DropDownMenuOption = DropDownMenuOption(option: "March")
    static let testAllMonths: [DropDownMenuOption] = [
        DropDownMenuOption(option: "1 месяц"),
        DropDownMenuOption(option: "3 месяца"),
        DropDownMenuOption(option: "6 месяцев")
    ]
}
