//
//  TesteView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 11/11/22.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        
        VStack {
            
            VStack {
                Text("is simply dummy text of the printing and typeset.")
//                    .font(.subheadline)
                ZStack {
                    Text("lalala")
                       
                } .background(Color.gray)
                    .offset(x: 10, y: -40)
                
            }.padding(.horizontal, 5.0) .background(Color.blue)
            
          
            
        }.padding(.all, 40.0) .background(Color.red)
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
//                Button(action: {
//                    print("next view")
//                }, label: {
//                    VStack(alignment: .leading){
//                        Group{
//                            Image("Lunch")
//                                .frame(width: geometry.size.width * 0.2, height: geometry.size.height * 0.16)
//                                .padding(.top, 7)
//                                .padding(.bottom, 8)
//
//                            Text("Iniciar refeição")
//                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
//                                .font(.system(size: 16.0))
//                                .fontWeight(.bold)
//                                .padding(.trailing, 8)
//                                .padding(.bottom, 4)
//
//                            Text("Alimente-se lentamente")
//                                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
//                                .font(.system(size: 14.0))
//                                .foregroundColor(.accentColor)
//                                .padding(.bottom, 7)
//                        }
//                        .padding(.leading, 4)
//                        .edgesIgnoringSafeArea(.leading)
//                    }
//                }).frame(width: geometry.size.width, height: 85, alignment: .leading)
//                    .buttonBorderShape(.roundedRectangle(radius: 16.0))
//                    .ignoresSafeArea(.container, edges: [.leading, .trailing])
//                    .padding(.bottom, 4)

//Button(action: {
//    print("next view")
//}, label: {
//    VStack(alignment: .leading){
//
//        Group {
//            Image("Watch")
//                .frame(width: geometry.size.width * 0.19, height: geometry.size.height * 0.16)
//                .padding([.top, .bottom], 4)
//
//            Text("Adicionar refeições")
//                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.05, alignment: .leading)
//                .font(.system(size: 16.0))
//                .fontWeight(.bold)
//                .padding(.trailing, 8)
//                .padding(.bottom, 4)
//
//            Text("Adicione lembretes")
//                .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.04, alignment: .leading)
//                .font(.system(size: 14.0))
//                .foregroundColor(.accentColor)
//                .padding(.bottom, 12)
//        }.padding(.leading, 7)
//    }
//}).frame(width: geometry.size.width, height: 85)
//    .buttonBorderShape(.roundedRectangle(radius: 16.0))
