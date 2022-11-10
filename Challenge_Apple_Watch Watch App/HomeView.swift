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
                                .padding(.bottom, 8)
                                .padding(.leading, 8)
                            
                            Text("Iniciar refeição")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 16.0))
                                .padding(.leading, 7)
                                .padding(.trailing, 8)
                                .padding(.bottom, 4)
                            
                            Text("Alimente-se lentamente")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 14.0))
                                .foregroundColor(.accentColor)
                                .padding(.leading, 7)
                                .padding(.bottom, 7)
                    }
                }).frame(width: geometry.size.width, height: 85, alignment: .leading)
                    .buttonBorderShape(.roundedRectangle(radius: 20.0))
                
                Button(action: {
                    print("next view")
                }, label: {
                    VStack(alignment: .leading){
                            Image("Watch")
                            .frame(width: geometry.size.width * 0.19, height: geometry.size.height * 0.16)
                                .padding(.top, 7)
                                .padding(.bottom, 8)
                                .padding(.leading, 8)
                            
                            Text("Iniciar refeição")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 16.0))
                                .padding(.leading, 7)
                                .padding(.trailing, 8)
                                .padding(.bottom, 4)
                            
                            Text("Alimente-se lentamente")
                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                .font(.system(size: 14.0))
                                .foregroundColor(.accentColor)
                                .padding(.leading, 7)
                                .padding(.bottom, 7)
                    }
                }).frame(width: geometry.size.width, height: 85, alignment: .leading)
                    .buttonBorderShape(.roundedRectangle(radius: 20.0))
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
