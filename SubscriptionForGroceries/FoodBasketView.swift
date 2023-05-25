//
//  FoodBasketView.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 25.05.2023.
//

import SwiftUI

struct FoodBasketView: View {
    
    @State private var selectedOption = 0
    private let options = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false ){
            VStack{
                Text("Что такое “Подписка”?")
                    .font(Font.titleText)
                    .padding(.top)
                Text("Подписка на еженедельные продукты удобна, поскольку экономит время, обеспечивает доступ к свежим продуктам, помогает планировать бюджет и позволяет экспериментировать с новыми продуктами.")
                    .font(Font.plainText)
                    .multilineTextAlignment(.center)
                    .padding(.top,4)
                
                Text("Что входит в корзины")
                    .font(Font.titleText)
                    .padding(.top,12)
                
                Text("Круглый год мы поставляем свежие молочные продукты, корнеплоды, зелень, овощи и фрукты. Некоторые овощи, фрукты и ягоды зависят от сезона. Общий вес корзины с продуктами составляет 10 - 15 кг. ")
                    .font(Font.plainText)
                    .multilineTextAlignment(.center)
                    .padding(.top,4)
                
                VStack(spacing: 24){
                   
                    ZStack{
                        Image("ic-card1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color(hex: "F1F2ED"))
                            .cornerRadius(8)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Корнеплоды")
                                    .font(Font.titleCartText)
                                    .padding(.bottom,1)
                                Text("Основные ингредиенты для\nприготовления многих\nтрадиционных блюд.\nКартофель - 2 кг \nМорковь - 1 кг\nЛук - 1 кг \nОбщий вес: 4 кг")
                                    .font(Font.plainText)
                                
                            }
                            .padding(.leading,16)
                            Spacer()
                        }
                    }
                    
                    ZStack{
                        Image("ic-card2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color(hex: "F1F2ED"))
                            .cornerRadius(8)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Овощи")
                                    .font(Font.titleCartText)
                                    .padding(.bottom,1)
                                Text("Два вида из последующих овощей:\nкапуста, тыква, кабачки, перец,\nбаклажан, кукуруза - 1кг \nОгурцы - 0,5 кг\nПомидоры - 0,5 кг \nОбщий вес: 2 кг")
                                    .font(Font.plainText)
                                
                            }
                            
                            .padding(.leading,16)
                            Spacer()
                        }
                    }
                    ZStack{
                        Image("ic-card3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color(hex: "F1F2ED"))
                            .cornerRadius(8)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Зелень")
                                    .font(Font.titleCartText)
                                    .padding(.bottom,1)
                                Text("Два вида из последующих зеленей: \nПетрушка, укроп, зеленый\nлук, салат, кинза, шпинат,\nбазилик - 0,150 кг\nОбщий вес: 0,150 кг")
                                    .font(Font.plainText)
                                
                            }
                            .padding(.leading,16)
                            Spacer()
                        }
                    }
                    
                    ZStack{
                        Image("ic-card4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color(hex: "F1F2ED"))
                            .cornerRadius(8)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Молочные продукты")
                                    .font(Font.titleCartText)
                                    .padding(.bottom,1)
                                Text("Один из последующих продуктов:\nтворог, сметана, сливочное\nмасло, йогурт, различные\nвиды сыров. - 0,5 кг\nМолоко - 1,5 л\nКефир - 1 л\nОбщий вес: 2,5 л и 0,5 кг. ")
                                    .font(Font.plainText)
                                
                            }
                            .padding(.leading,16)
                            Spacer()
                        }
                        
                    }
                    
                    ZStack{
                        Image("ic-card5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color(hex: "F1F2ED"))
                            .cornerRadius(8)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Фрукты")
                                    .font(Font.titleCartText)
                                    .padding(.bottom,1)
                                Text("Два вида фруктов: \nяблоко, груши, \nцитрусовые, персики, \nабрикосы, банан - 2 кг \nОбщий вес: 2 кг.")
                                    .font(Font.plainText)
                                
                            }
                            .padding(.leading,16)
                            Spacer()
                        }
                        
                    }
                    
                    ZStack{
                        Image("ic-card6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color(hex: "F1F2ED"))
                            .cornerRadius(8)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Ягоды")
                                    .font(Font.titleCartText)
                                    .padding(.bottom,1)
                                Text("Два вида ягод: клубника, \nсмородина, вишня, малина, \nголубика, черешня - 0,5 кг\nОбщий вес: 0,5 кг.")
                                    .font(Font.plainText)
                                
                            }
                            .padding(.leading,16)
                            Spacer()
                        }
                        
                    }
                    
                }
                .padding(.top,12)
                
                VStack (alignment: .leading){
                    Text("Выберите длительность подписки")
                        .font(Font.titleText)
                        .multilineTextAlignment(.leading)
                    DropDownMenuView()
                }.padding(.top,12)
                
                Button(action: {
                           
                    print("Button pressed")
                }) {
                    Text("Купить подписку")
                        .font(Font.titleText)
                        .padding([.top,.bottom], 20)
                        .padding([.leading,.trailing], 110.0)
                        .foregroundColor(.white)
                        .background(Color.init(hex: "64CE69"))
                        .cornerRadius(8)
                    }
                .padding(.top,12)
                
                
                }
                
                .navigationBarTitle("Корзины продуктов",displayMode: .inline)
                
                Spacer()
            }
            .padding([.leading,.trailing],16)
        }
    }
    


struct FoodBasketView_Previews: PreviewProvider {
    static var previews: some View {
        FoodBasketView()
    }
}
