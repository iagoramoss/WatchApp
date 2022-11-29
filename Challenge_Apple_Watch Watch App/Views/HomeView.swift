//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var eatingTime: EatingTime
    @State var showSuggestionView: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                if #available(watchOS 9.0, *) {
                    NavigationStack{
                        VStack(alignment: .center){
                            
                            // Telas Menores
                            if geometry.size.width <= 161{
                                Image.startEat
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.35)
                                    .padding(.top, 40)
                                Text("Concentre-se no agora e aproveite sua refeição.")
                                    .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.26)
                                    .font(.system(size: 13))
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                                
                            }
                            // Telas Maiores
                            else {
                                Image.startEat
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 93, height: 64)
                                    .padding(.top, 40)
                                Text("Concentre-se no agora e aproveite sua refeição.")
                                    .frame(width: geometry.size.width, height: geometry.size.height * 0.26)
                                    .font(.system(size: 14))
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                            }
                            
                            // Botão para as duas Telas
                            DefaultButtonView(
                                text: "Iniciar refeição",
                                width: geometry.size.width * 0.93,
                                height: 44,
                                cornerRadius: 22.0,
                                action: { self.eatingTime.initEating()
                                    showSuggestionView.toggle()})
                            .padding(.top, 8)
                            .edgesIgnoringSafeArea(.bottom)
                            
                        }
                        .toolbar{
                            ToolbarItem(placement: .cancellationAction){
                                Text("Appreciate")
                                    .foregroundColor(.colorDefault)
                            }
                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.black)
                } else {
                    // Fallback on earlier versions
                }
                
                if showSuggestionView {
                    SuggestionView(backHomeAction: {showSuggestionView.toggle()})
                    
                }
            }
        }.sheet(isPresented: self.$eatingTime.presentAdvice) {
            AdviceView()
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView() .environmentObject(EatingTime())
    }
}

// Comentários


// Text("Alimente-se lentamente")
// .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.04)
// .font(.system(size: 14.0))
// .foregroundColor(.accentColor)


//            .navigationTitle {
//                Text("Appreciate")
//                    .foregroundColor(.colorDefault)
//                .padding(.trailing, 30)}


//Button(action: {
// self.eatingTime.initEating()
//showSuggestionView.toggle()
// }, label: {
// Image("Food")
// .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.4)

// }).frame(width: geometry.size.width * 0.45, height: geometry.size.height * 0.45)
// .buttonStyle(PlainButtonStyle())

// Text("Iniciar refeição")
// .frame(width: geometry.size.width * 0.65, height: geometry.size.height * 0.06)
//.font(.system(size: 16.0))
// .fontWeight(.bold)
// .foregroundColor(.colorDefault)
// .padding(.top, 16)


//                            .frame(width: 176, height: 39)
//.frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.3)
//                            .frame(width: 176, height: 39)
