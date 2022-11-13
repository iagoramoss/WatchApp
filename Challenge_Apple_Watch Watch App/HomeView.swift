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
            NavigationView {
                VStack(spacing: 4) {
                    // Botão 1
                    Spacer(minLength: 8)
                    NavigationLink(destination: TesteView(), label: {
                        VStack(alignment: .leading){
                            Group{
                                Image("Lunch")
                                    .frame(width: geometry.size.width * 0.2, height: geometry.size.height * 0.16)
                                    .padding(.top, 7)
                                    .padding(.bottom, 8)
                                
                                Text("Iniciar refeição")
                                    .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.05, alignment: .leading)
                                    .font(.system(size: 16.0))
                                    .fontWeight(.bold)
                                    .padding([.trailing, .bottom], 4)
                                
                                Text("Alimente-se lentamente")
                                    .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
                                    .font(.system(size: 14.0))
                                    .foregroundColor(.accentColor)
                                    .padding(.bottom, 7)
                                    
                            }.padding(.leading, 4)
                            
                        }
                    }).frame(width: geometry.size.width, height: geometry.size.height * 0.52)
                        .buttonBorderShape(.roundedRectangle(radius: 16.0))
                      
                    // Botão 2
                    
                    NavigationLink(destination: TesteView(), label: {
                        VStack(alignment: .leading){
                            Group {
                                Image("Watch")
                                    .frame(width: geometry.size.width * 0.19, height: geometry.size.height * 0.16)
                                    .padding(.top, 6)
                                    .padding(.bottom, 4)
                                
                                Text("Adicionar refeições")
                                    .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.06, alignment: .leading)
                                    .font(.system(size: 16.0))
                                    .fontWeight(.bold)
                                    .padding(.trailing, 4)
                                    .padding(.bottom, 4)
                                
                                Text("Adicione lembretes")
                                    .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.04, alignment: .leading)
                                    .font(.system(size: 14.0))
                                    .foregroundColor(.accentColor)
                                    .padding(.bottom, 12)
                            }.padding(.leading, 4)
                        }
                    }).frame(width: geometry.size.width, height: geometry.size.height * 0.52)
                        .buttonBorderShape(.roundedRectangle(radius: 16.0))
                       
                }.edgesIgnoringSafeArea(.horizontal)
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarTitle("App title")
                    
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
