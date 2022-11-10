//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Button(action: {
                    print("next view")
                }, label: {
                    VStack(alignment: .leading){
                            Image("Lunch")
                            .frame(width: geometry.size.width * 0.19, height: geometry.size.height * 0.16)
                                .padding(.top, 7)
                                .padding([.bottom, .leading], 8)
                            
                            Text("Iniciar refeição")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 16.0))
                                .fontWeight(.bold)
                                .padding(.leading, 7)
                                .padding(.trailing, 8)
                                .padding(.bottom, 4)
                            
                            Text("Alimente-se lentamente")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 14.0))
                                .foregroundColor(.accentColor)
                                .padding([.leading, .bottom], 7)
                    }
                }).frame(width: geometry.size.width, height: 85, alignment: .leading)
                    .buttonBorderShape(.roundedRectangle(radius: 16.0))
                    .ignoresSafeArea(.container, edges: [.leading, .trailing])
                    .padding(.bottom, 4)
                
                Button(action: {
                    print("next view")
                }, label: {
                    VStack(alignment: .leading){
                            Image("Watch")
                                .frame(width: geometry.size.width * 0.19, height: geometry.size.height * 0.16)
                                .padding([.top, .bottom], 4)
                                .padding(.leading, 7)
                            
                            Text("Adicionar refeições")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 16.0))
                                .fontWeight(.bold)
                                .padding(.leading, 7)
                                .padding(.trailing, 8)
                                .padding(.bottom, 4)
                            
                            Text("Adicione lembretes")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.04, alignment: .leading)
                                .font(.system(size: 14.0))
                                .foregroundColor(.accentColor)
                                .padding(.leading, 7)
                                .padding(.bottom, 12)
    
                    }
                }).frame(width: geometry.size.width, height: 85)
                    .buttonBorderShape(.roundedRectangle(radius: 16.0))
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
