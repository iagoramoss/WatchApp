//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var showView: Int = 0
    @State var showSuggestionView: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                VStack(alignment: .center){
                    Button(action: {
                        showSuggestionView.toggle()
                    }, label: {
                        Image("Food")
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.4)
                            .padding(.bottom, 12)
                    }).frame(width: geometry.size.width * 0.45, height: geometry.size.height * 0.45)
                        .buttonStyle(PlainButtonStyle())
                        .padding(.bottom, 12)
                    
                    Text("Iniciar refeição")
                        .frame(width: geometry.size.width * 0.65, height: geometry.size.height * 0.06)
                        .font(.system(size: 16.0))
                        .fontWeight(.bold)
                        .foregroundColor(.colorDefault)
                        .padding(.bottom, 8)
                    
                }
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Text("Appreciate")
                            .foregroundColor(.colorDefault)
                    }
                }
            }
            if showSuggestionView {
                SuggestionView()
                  
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


//            .navigationTitle {
//                Text("Appreciate")
//                    .foregroundColor(.colorDefault)
//                .padding(.trailing, 30)}
