//
//  DropDownMenuList.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 25.05.2023.
//

import SwiftUI

struct DropDownMenuList: View {
    
    let options: [DropDownMenuOption]
        
        /// An action called when user select an action.
        let onSelectedAction: (_ option: DropDownMenuOption) -> Void
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 2) {
                    ForEach(options) { option in
                        DropDownMenuListRow(option: option, onSelectedAction: self.onSelectedAction)
                        }
                    }
                }
                // Check first if number of options * 32 (Option height - CONSTANT - YOU
                // MAY CHANGE IT) is greater than 300 (MAX HEIGHT - ALSO, YOU MAY CHANGE
                // IT), if true, then make it options list scroll, if not set frame only
                // for available options.
                .frame(height: CGFloat(self.options.count * 32) > 300
                       ? 300
                       : CGFloat(self.options.count * 32)
                )
                .padding(.vertical, 5)
                .overlay {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 1)
                        
        }
    }
}

struct DropDownMenuList_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenuList(options: DropDownMenuOption.testAllMonths, onSelectedAction: { _ in })
    }
}
