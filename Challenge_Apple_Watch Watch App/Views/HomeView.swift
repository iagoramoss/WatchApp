//
//  HomeView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var mealDAO: MealDAO
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
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(.colorDefault)
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                        
                        MealTypeButton(
                            width: geometry.size.width,
                            height: geometry.size.height,
                            text: "Pequenas Porções",
                            action: {
                                self.mealDAO.meal.type = .short
                                self.mealDAO.startEating()
                                
                                showSuggestionView.toggle()
                            }
                        )
                        .padding(.bottom, 8)
                        
                        MealTypeButton(
                            width: geometry.size.width,
                            height: geometry.size.height,
                            text: "Grandes Refeições",
                            action: {
                                self.mealDAO.meal.type = .long
                                self.mealDAO.startEating()
                                
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
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MealDAO())
    }
}
