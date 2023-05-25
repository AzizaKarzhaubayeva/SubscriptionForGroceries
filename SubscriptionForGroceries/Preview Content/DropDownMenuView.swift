//
//  DropDownMenuView.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 25.05.2023.
//

import SwiftUI

struct DropDownMenuView: View {
    @State private var subscriptionMonth: DropDownMenuOption? = nil
    var body: some View {
        VStack {
                    DropDownMenu(
                        selectedOption: self.$subscriptionMonth,
                        placeholder: "",
                        options: DropDownMenuOption.testAllMonths
                    )
        
                    //Text(subscriptionMonth?.option ?? "")
            Spacer()
                }
    }
}

struct DropDownMenuView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenuView()
            .previewLayout(.sizeThatFits)
    }
}
