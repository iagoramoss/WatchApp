//
//  HomeView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var meal: Meal
    @State var showSuggestionView: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                NavigationStack{
                    VStack{
                        Text("Selecione o tipo de refeição a ser iniciada")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.colorDefault)
                            .padding(.bottom, 12)
                        
                        MealTypeButton(
                            width: geometry.size.width,
                            text: "Pequenas Porções",
                            action: {
                                self.meal.type = .short
                                self.meal.startEating()
                                
                                showSuggestionView.toggle()
                            }
                        )
                        .padding(.bottom, 8)
                        
                        MealTypeButton(
                            width: geometry.size.width,
                            text: "Grandes Refeições",
                            action: {
                                self.meal.type = .long
                                self.meal.startEating()
                                
                                showSuggestionView.toggle()
                            }
                        )
                    }.toolbar{
                        ToolbarItem(placement: .cancellationAction){
                            Text("Appreciate")
                                .foregroundColor(.colorDefault)
                        }
                    }
                }
                
                if(showSuggestionView) {
                    SuggestionView(
                        backHomeAction: {
                            showSuggestionView.toggle()
                            
                        }
                    )
                }
            }.sheet(isPresented: self.$eatingTime.presentAdvice) {
                AdviceView()
            }
        }.sheet(isPresented: self.$meal.presentAdvice) {
            AdviceView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
