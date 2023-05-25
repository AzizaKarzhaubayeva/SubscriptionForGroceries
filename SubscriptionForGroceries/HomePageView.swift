//
//  HomePageView.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 22.05.2023.
//

import SwiftUI
import PDFKit


struct HomePageView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            
            
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
                    .background(Color(hex:"#F5F5F5"))
                    .cornerRadius(10)
                    
                }
                
                VStack{
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack(alignment: .top ,spacing: 10){
                            VStack{
                                Image("ic-story1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80,height: 80)
                                Text("Новинки")
                            }
                            VStack{
                                Image("ic-story2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80,height: 80)
                                Text("Хиты")
                            }
                            VStack{
                                Image("ic-story3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80,height: 80)
                                Text("Акции")
                            }
                            VStack{
                                Image("ic-story4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80,height: 80)
                                Text("Подписка на\nпродукты")
                                    .multilineTextAlignment(.center)
                                
                            }
                            VStack{
                                Image("ic-story1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80,height: 80)
                                Text("Новинки")
                            }
                            VStack{
                                Image("ic-story3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80,height: 80)
                                Text("Акции")
                            }
                        }
                        
                        
                    }
                    .padding(.leading,12)
                    .padding(.top,8)
                    
                }
                
                VStack{
                    CardView()
                        .padding([.leading,.trailing],16)
                }
                
                Spacer()
            }
        }
    }
    
    struct HomePageView_Previews: PreviewProvider {
        static var previews: some View {
            HomePageView()
        }
    }
}
