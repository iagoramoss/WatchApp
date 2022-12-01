//
//  TesteView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 11/11/22.
//

import SwiftUI

struct StopEatingView: View {
    var nextViewAction: () -> ()
    @EnvironmentObject var mealDAO: MealDAO
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                ScrollView {
                    VStack(alignment: .center) {
                        Image.endEat
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.22, height: geometry.size.height * 0.21)
                            .padding(.top, 15)
                        
                        Text(self.mealDAO.advice?.rawValue ?? Advice.tooFast.rawValue)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.09)
                            .font(.footnote)
                            .padding(.top, 28)
                        
                        DefaultButtonView(
                            width: geometry.size.width,
                            height: 44,
                            cornerRadius: 22,
                            action: {
                                self.mealDAO.stopAdviceUpdates()
                                nextViewAction()
                            },
                            label: {
                                Text("Finalizar refeição")
                            }
                        )
                        .padding(.top, 28)
                        
                    }.toolbar{
                        ToolbarItem(placement: .cancellationAction){
                            Text("Appreciate")
                                .foregroundColor(.colorDefault)
                        }
                    }
                }
            }
        }.onAppear(){
            self.mealDAO.startAdviceUpdates()
        }
    }
}

struct StopEatingView_Previews: PreviewProvider {
    static var previews: some View {
        StopEatingView(nextViewAction: {})
            .environmentObject(MealDAO())
    }
}
