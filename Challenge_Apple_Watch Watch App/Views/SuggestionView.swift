//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct SuggestionView: View {
    
    @State var showTransitionView: Bool = false
    
    var backHomeAction: () -> ()
    
    var body: some View {
        
        let tip = AppreciateTips.allCases.randomElement()!
        let tipTitle = String(describing: tip.rawValue)
        let tipImage = tip.image
        
        ZStack {
            GeometryReader { geometry in
                NavigationStack {
                    ScrollView {
                        VStack {
                            tipImage
                                .fixedSize(horizontal: true, vertical: true)
                                .frame(width: geometry.size.width * 0.22, height: geometry.size.height * 0.14, alignment: .center)
                                .padding(.top, 13)
                            
                            //height: geometry.size.height * 0.09
                            Text("Sugestão apreciativa")
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: geometry.size.width - 17, alignment: .center)
                            //.font(.system(size: geometry.size.width * 0.087))
                                .font(.caption)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                                .foregroundColor(.colorDefault)
                                .padding(.top, 5)
                            
                            Text(tipTitle)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: geometry.size.width - 16, alignment: .leading)
                            //.font(.system(size: geometry.size.width * 0.077))
                                .font(.footnote)
//                                .multilineTextAlignment(.leading)
                                .lineLimit(nil)
                                .padding(.top, 5)
                            
                            // Botão Continuar
                            DefaultButtonView(
                                text: "Continuar",
                                width: geometry.size.width * 0.93,
                                height: 44,
                                cornerRadius: 22.0,
                                action: {
                                    showTransitionView.toggle()
                                    WKInterfaceDevice.current().play(.click)
                                }
                            ).padding(.top, 8)
                        }
                        // "Navigation title" personalizada
                        .toolbar{
                            ToolbarItem(placement: .cancellationAction){
                                Button(action: {
                                    backHomeAction()
                                }, label: {
                                    Image(systemName: "chevron.backward.circle.fill")
                                        .font(.system(size: geometry.size.width * 0.093))
                                    Text("Sugestões")
                                        .frame(width: geometry.size.width * 0.46)
                                        .font(.system(size: geometry.size.width * 0.087))
                                }).foregroundColor(.colorDefault)
                            }
                        }
                    }
                }
            }.frame(height: WKInterfaceDevice.current().screenBounds.size.height)
        }
        if showTransitionView {
            TransitionView(closeViewAction: {
                showTransitionView.toggle()
                backHomeAction()
            })
        }
    }
}



struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView(backHomeAction: {})
        // .environmentObject(EatingTime())
    }
}
//geometry.size.width * 0.92 - titulo e texto
