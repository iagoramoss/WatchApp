//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI
import WatchKit

struct SuggestionView: View {
    
    var appreciativeTip: [String] = [
        "Delicie lentamente a sua refeição e tente reconhecer os seus diferentes temperos.",
        "Sinta a textura da sua comida. É fácil morder ou é preciso que você quebre enquanto mastiga?",
        "Sinta o aroma da sua comida perceba suas emoções. Lhe traz alguma lembrança ? Qual a sensação?",
        "Busque um ambiente  e tranquilo para realizar a refeição faz toda a diferença.",
        "Evite mexer no celular ou assistir à televisão enquanto se alimenta."
    ]
    
    var body: some View {
        
        let randomTips = appreciativeTip.randomElement()!
        
        ScrollView {
            GeometryReader { geometry in
                VStack{
                    Image("Lunch")
                        .frame(width: geometry.size.width * 0.22, height: geometry.size.height * 0.14)
                        .padding(.top, 13)
                        .padding(.bottom, 12)
                    
                    Text("Sugestão apreciativa")
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.07, alignment: .leading)
                        .font(.system(size: 16.0))
//                        .fontWeight(.semibold)
                        .padding([.leading, .bottom], 8)
                    
                    Text(randomTips)
                        .frame(width: geometry.size.width * 0.95, height: geometry.size.height * 0.38, alignment: .leading)
                        .font(.system(size: 14.0))
                        .lineLimit(nil)
                        .lineSpacing(0.1)
                        .padding([.leading, .trailing], 4)
                        .padding(.bottom, 8)
                        .multilineTextAlignment(.leading)

                    Button(action: {
                        print("click me")
                    }, label: {
                        Text("Continuar")
                            .frame(width: 140, height: 120, alignment: .center)
                            .font(.system(size: 17.0))
                            .cornerRadius(9.0)
                    }).frame(width: geometry.size.width * 0.93, height: geometry.size.height * 0.16)
                }
            }.frame(height: WKInterfaceDevice.current().screenBounds.size.height, alignment: .leading)
                .padding(.bottom, 4)
        }
    }
}

struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView()
    }
}

// ==== Comentários
// Image("luch")
// .resizable()
// .scaledToFit()
// .frame(width: UIScreen.main.bounds.width * 0.22, height: UIScreen.main.bounds.height * 0.14)
// Text(randomTips)
// .font(.system(size: 100))
// .minimumScaleFactor(0.01)
