//
//  TesteView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 11/11/22.
//

import SwiftUI

struct StopEatingView: View {
    var endViewAcion: () -> ()
    var body: some View {
        GeometryReader{ geometry in
            NavigationView {
                VStack(alignment: .center){
                    Button(action: {
                        endViewAcion()
                    }, label: {
                        Image("Food")
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.4)
                            .padding(.bottom, 12)
                        
                    }).frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.4)
                    .padding(.bottom, 12)
                    
                    Text("Finalizar refeição")
                        .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.06)
                        .foregroundColor(.colorDefault)
                    
                }.navigationBarTitleDisplayMode(.inline)
                    .navigationTitle {
                        Text("Appreciate")
                            .foregroundColor(.colorDefault)
                            .padding(.trailing, 40)
                    }
            }
        }
    }
}

struct StopEatingView_Previews: PreviewProvider {
    static var previews: some View {
        StopEatingView(endViewAcion: {})
    }
}
