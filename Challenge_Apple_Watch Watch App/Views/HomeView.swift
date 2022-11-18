//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var eatingTime: EatingTime
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationView {
                VStack(alignment: .center){
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination:{
    
                            SuggestionView()
                        }, label: {
                            Image("Food")
                                .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.4)
                                .padding(.bottom, 12)
                        }).buttonStyle(PlainButtonStyle())
                    }).frame(width: geometry.size.width * 0.45, height: geometry.size.height * 0.45)
                        .padding(.bottom, 12)
                    
                    Text("Iniciar refeição")
                        .frame(width: geometry.size.width * 0.65, height: geometry.size.height * 0.06)
                        .font(.system(size: 16.0))
                        .fontWeight(.bold)
                        .foregroundColor(.colorDefault)
                        .padding(.bottom, 8)

                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle {
                    Text("Appreciate")
                        .foregroundColor(.colorDefault)
                    .padding(.trailing, 30)}
            }
        }
    }
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

// Comentários


// Text("Alimente-se lentamente")
// .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.04)
// .font(.system(size: 14.0))
// .foregroundColor(.accentColor)
