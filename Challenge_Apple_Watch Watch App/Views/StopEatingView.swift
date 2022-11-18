//
//  TesteView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 11/11/22.
//

import SwiftUI

struct StopEatingView: View {
    
    var nextViewAction: () -> ()
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                VStack(alignment: .center){
                    Button(action: {
                        nextViewAction()
                    },
                    label: {
                        Image("Food")
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.4)

                    }).frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.4)
                    
                    Text("Finalizar refeição")
                        .frame(width: geometry.size.width * 0.96, height: geometry.size.height * 0.06)
                        .fontWeight(.semibold)
                        .padding(.top, 16)
                        .foregroundColor(.colorDefault)
                    
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
