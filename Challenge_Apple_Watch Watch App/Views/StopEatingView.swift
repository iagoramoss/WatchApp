//
//  TesteView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 11/11/22.
//

import SwiftUI

struct StopEatingView: View {
    
    var nextViewAction: () -> ()
    @EnvironmentObject var meal: Meal
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                VStack(alignment: .center){
                    
                    // Telas Menores
                    if geometry.size.width <= 174{
                        Image.endEat
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.5)
                            .padding(.top, 15)
                            .fixedSize()
                    }
                    
                    // Telas Maiores
                    else{
                        Image.endEat
                            .resizable()
                            .scaledToFit()
                            .frame(width: 72, height: 92)
                            .padding(.top, 15)
                            .fixedSize()
                    }
                    Text("Você já está saciado?")
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.09)
                        .font(.system(size: 14))
                        .padding(.top, 3)
                    
                    DefaultButtonView(
                        width: geometry.size.width,
                        height: 44,
                        cornerRadius: 22,
                        action: {
                            self.meal.stopEating()
                            nextViewAction()
                            
                        }, label: {
                            Text("Finalizar refeição")
                        }
                    )
                    .padding(.top, 10)
                    
                }.toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Text("Appreciate")
                            .foregroundColor(.colorDefault)
                    }
                }
            }
        }
    }
}

struct StopEatingView_Previews: PreviewProvider {
    static var previews: some View {
        StopEatingView(nextViewAction: {})
    }
}

//                    Button(action: {
//                    self.eatingTime.stopEating()
//                        nextViewAction()
//                    },
//                    label: {

//                    }).frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.4)


//                    Text("Finalizar refeição")
//                        .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.06)
//                        .fontWeight(.semibold)
//                        .padding(.top, 16)
//                        .foregroundColor(.colorDefault)

//                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.4)
