//
//  CardView.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 24.05.2023.
//

import SwiftUI

struct CardView: View {
    @State private var navigateToAnotherPage = false
    var body: some View {
        ZStack{
            Image("Background1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    .cornerRadius(8)
                    
            HStack{
                
                VStack(alignment: .trailing) {
                    Text("Оформляйте\nеженедельную подписку\nна наши продукты")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.trailing)
                        .font(Font.bannerText)
                        .shadow(color: .black.opacity(0.12), radius: 8, x: 4, y: 4)
                    
                    HStack{
                        Text("эксклюзивные\nпредложения\n до ")
                            .font(Font.bannerText)
                        +
                        Text("25%")
                            .font(Font.extraBold)
                    }
                    
                    .padding([.top,.bottom], 4)
                    .padding([.leading,.trailing], 8)
                    .background(Color(hex: "#6DCF7A"))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.trailing)
                    .cornerRadius(8)
                    .shadow(color: .black.opacity(0.12), radius: 8, x: 4, y: 4)
                    
                    NavigationLink(destination: FoodBasketView(), label: {
                            Text("Выбрать корзину для подписки")
                            .font(Font.bannerBtnText)
                            .foregroundColor(.black)
                            .padding([.top,.bottom], 4)
                            .padding([.leading,.trailing], 16)
                            .background(Color(hex: "#F8D56D"))
                            .cornerRadius(8)
                    })
                        
                }
                Spacer()
                    
            }
            .padding(.leading,30)
            
        }
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
            
    }
}
