//
//  HomePageView.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 22.05.2023.
//

import SwiftUI
import PDFKit

extension Color {
    init(hexi: String) {
        let hex = hexi.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct HomePageView: View {
    @State private var searchText = ""
    var body: some View {
        
        VStack{
            
            HStack{
                Image("ic-logo")
                    .padding(.leading, 16)
                Spacer()
                 
                HStack(){
                    HStack{
                        Text("Алматы\nУкажите свой адрес")
                            .font(Font.headerText)
                            .multilineTextAlignment(.trailing)
                        Image("ic-downarrow")
                            .padding(.leading,-8)
                    }
                    Image("ic-bell")
                }
                .padding(.trailing,16)
            }
          
            VStack{
                HStack{
                    Image("ic-search")
                    TextField("Искать на Арбузе", text: $searchText)
                        .font(Font.titleText)
                        .bold()
                }
                .frame(width: 358)
                .padding([.leading,.bottom,.top],10)
                .background(Color(hexi:"#F5F5F5"))
                .cornerRadius(10)
                
            }
            
            VStack{
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 10){
                        Image("ic-story1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80,height: 80)
                        Image("ic-story2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80,height: 80)
                        Image("ic-story3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80,height: 80)
                        Image("ic-story4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80,height: 80)
                        Image("ic-story1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80,height: 80)
                        Image("ic-story3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80,height: 80)
                    }
                    
                    
                }
                .padding(.leading,12)
                .padding(.top,8)
               
            }
            
            Image("Background1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 358,height: 143)
                .cornerRadius(10)
            
            Spacer()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
