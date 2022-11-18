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
    
    var appreciativeTip: [String: String] = [
        "Tato" : "Delicie lentamente a sua refeição e tente reconhecer os seus diferentes temperos.",
        "Paladar" : "Sinta a textura da sua comida. É fácil morder ou é preciso que você quebre enquanto mastiga?",
        "Olfato" : "Sinta o aroma da sua comida perceba suas emoções. Lhe traz alguma lembrança ? Qual a sensação?",
    ]
    
    var body: some View {
        
        let randomTips = appreciativeTip.randomElement()!
        
        ZStack{
            NavigationStack {
                ScrollView {
                    GeometryReader { geometry in
                        VStack {
                            Image(randomTips.key)
                                .frame(width: geometry.size.width * 0.22, height: geometry.size.height * 0.14)
                                .padding(.top, 13)
                                .padding(.bottom, 12)
                            
                            Text("Sugestão apreciativa")
                                .frame(width: geometry.size.width, height: geometry.size.height * 0.07, alignment: .center)
                                .font(.system(size: 16.0))
                                .fontWeight(.semibold)
                                .foregroundColor(.colorDefault)
                                .padding(.bottom, 8)
                            
                            Text(randomTips.value)
                                .frame(width: geometry.size.width * 0.95, height: geometry.size.height * 0.38, alignment: .center)
                                .font(.system(size: 14.0))
                                .lineLimit(nil)
                                .multilineTextAlignment(.leading)
                                .lineSpacing(0.1)
                                .padding(.leading, 8)
                                .padding(.bottom, 8)
                            
                            // Botão Continuar
                            Button(action: {
                                showTransitionView.toggle()
                                
                            },label: {
                                Text("Continuar")
                                    .frame(width: 140, height: 120, alignment: .center)
                                    .font(.system(size: 17.0))
                            })
                            .background(Color.colorButton)
                            .frame(width: geometry.size.width * 0.93, height: geometry.size.height * 0.16)
                            .cornerRadius(9.0)
                            .padding([.leading, .trailing], 6)
                            
                            // "Navigation title" personalizada
                            .toolbar{
                                ToolbarItem(placement: .cancellationAction){
                                    Button(action: {
                                        backHomeAction()

                                    }, label: {
                                        Image(systemName: "chevron.backward.circle.fill")
                                        Text("Sugestões")
                                    }).foregroundColor(.colorDefault)
                                }
                            }
                        }
                    }.frame(height: WKInterfaceDevice.current().screenBounds.size.height, alignment: .leading)
                }
            }
            if showTransitionView{
                TransitionView(closeViewAction: {
                    showTransitionView.toggle()
                    backHomeAction()
                })
            }
        }
    }
}
struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView(backHomeAction: {})
    }
}

//        "Busque um ambiente  e tranquilo para realizar a refeição faz toda a diferença.",
//        "Evite mexer no celular ou assistir à televisão enquanto se alimenta."
