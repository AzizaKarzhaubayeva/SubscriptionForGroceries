//
//  DropDownMenu.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 25.05.2023.
//

import SwiftUI

struct DropDownMenu: View {
    @State private var isOptionsPresented: Bool = false
    
    @Binding var selectedOption: DropDownMenuOption?
    
    let placeholder: String
    
    let options: [DropDownMenuOption]
    var body: some View {
            Button(action: {
                withAnimation {
                    self.isOptionsPresented.toggle()
                }
            }) {
                HStack {
                    Text(selectedOption == nil ? placeholder : selectedOption!.option)
                        .fontWeight(.medium)
                        .foregroundColor(selectedOption == nil ? .gray : .black)
                    
                    Spacer()
                    
                    Image(systemName: self.isOptionsPresented ? "chevron.up" : "chevron.down")
                        // This modifier available for Image since iOS 16.0
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                }
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 1)
            }
            .overlay(alignment: .top) {
                VStack {
                    if self.isOptionsPresented {
                        Spacer(minLength: 60)
                        DropDownMenuList(options: self.options) { option in
                            self.isOptionsPresented = false
                            self.selectedOption = option
                        }
                    }
                }
            }
            .padding(.horizontal)
            // We need to push views under drop down menu down, when options list is
            // open
            .padding(
                // Check if options list is open or not
                .bottom, self.isOptionsPresented
                // If options list is open, then check if options size is greater
                // than 300 (MAX HEIGHT - CONSTANT), or not
                ? CGFloat(self.options.count * 32) > 300
                    // IF true, then set padding to max height 300 points
                    ? 300 + 30 // max height + more padding to set space between borders and text
                    // IF false, then calculate options size and set padding
                    : CGFloat(self.options.count * 32) + 30
                // If option list is closed, then don't set any padding.
                : 0
            )
        }
}

struct DropDownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenu(
                    selectedOption: .constant(nil),
                    placeholder: "",
                    options: DropDownMenuOption.testAllMonths
                )
    }
}
