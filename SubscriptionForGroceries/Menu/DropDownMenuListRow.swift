//
//  DropDownMenuListRow.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 25.05.2023.
//

import SwiftUI

struct DropDownMenuListRow: View {
    let option: DropDownMenuOption
        
        /// An action called when user select an action.
    let onSelectedAction: (_ option: DropDownMenuOption) -> Void
    
    var body: some View {
        Button(action: {
                    self.onSelectedAction(option)
                }) {
                    Text(option.option)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .foregroundColor(.black)
                .padding(.vertical, 5)
                .padding(.horizontal)
    }
}

struct DropDownMenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenuListRow(option: DropDownMenuOption.testSingleMonth, onSelectedAction: { _ in })
    }
}
