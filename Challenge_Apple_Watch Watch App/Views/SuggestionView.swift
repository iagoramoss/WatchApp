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
            NavigationStack {
                ScrollView {
                    GeometryReader { geometry in
                        VStack {
                            tipImage
                                .fixedSize(horizontal: true, vertical: true)
                                .frame(width: geometry.size.width * 0.22, height: geometry.size.height * 0.14, alignment: .center)
                                .padding(.top, 13)

//                           height: geometry.size.height * 0.09
                            Text("Sugestão apreciativa")
                                .fixedSize(horizontal: true, vertical: false)
                                .frame(width: geometry.size.width - 17, height: 20, alignment: .leading)
                                .font(.system(size: geometry.size.width * 0.087))
                                .fontWeight(.semibold)
                                .foregroundColor(.colorDefault)
//                                .padding(.top, 7)
                            
                            Text(tipTitle)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: geometry.size.width - 16, height: 85, alignment: .leading)
                                .font(.system(size: geometry.size.width * 0.077))
                                .multilineTextAlignment(.leading)
                                .lineLimit(nil)
//                                .padding(.top, 8)
                            
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
                                        print(geometry.size.width)
                                        print(geometry.size.height)
                                    }, label: {
                                        Image(systemName: "chevron.backward.circle.fill")
                                            .font(.system(size: geometry.size.width * 0.093))
                                        Text("Sugestões")
                                            .frame(width: geometry.size.width * 0.46)
                                            .font(.system(size: geometry.size.width * 0.087))
                                    }).foregroundColor(.colorDefault)
                            }
                        }
                    }.frame(height: WKInterfaceDevice.current().screenBounds.size.height)
                }
            }
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

//.padding(.bottom, 6)
//geometry.size.width * 0.92 - titulo e texto
