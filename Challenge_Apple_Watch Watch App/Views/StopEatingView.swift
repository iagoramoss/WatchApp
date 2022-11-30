//
//  TesteView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 11/11/22.
//

import SwiftUI

struct StopEatingView: View {
    
    var nextViewAction: () -> ()
    @EnvironmentObject var eatingTime: EatingTime
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                ScrollView {
                    VStack(alignment: .center) {
                        Image.endEat
                            .resizable()
                            .scaledToFit()
                        //                      .frame(width: 72, height: 92)
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.4)
                            .padding(.top, 15)
                        
                        Text("Você já está saciado?")
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.09)
                        // .font(.system(size: 14))
                            .font(.footnote)
                            .padding(.top, 3)
                        
                        DefaultButtonView(text: "Finalizar refeição",
                                          width: geometry.size.width,
                                          height: 44,
                                          //                                      height: 50,
                                          cornerRadius: 22,
                                          action: {self.eatingTime.stopEating()
                            nextViewAction()})
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
