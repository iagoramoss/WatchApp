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
        
        ZStack{
            NavigationStack {
                ScrollView {
                    GeometryReader { geometry in
                        VStack {
                            tipImage
                                .frame(width: geometry.size.width * 0.22, height: geometry.size.height * 0.14)
                                .padding(.top, 13)
                                .padding(.bottom, 11)
                            
                            // Telas Menores
                            
                            if geometry.size.width <= 174{
                                Text("Sugestão apreciativa")
                                    .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.09, alignment: .leading)
                                    .font(.system(size: 14.0))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.colorDefault)
                                    .padding(.leading, 8)
                                
                                if tipTitle == AppreciateTips.paladar.rawValue{
                                    Text(AppreciateTips.paladar.rawValue)
                                        .frame(width: geometry.size.width * 0.92, height: 70, alignment: .leading)
                                        .font(.system(size: 14.0))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .edgesIgnoringSafeArea(.leading)
                                        .padding(.bottom, 6)
                                        .padding(.leading, 8)
                                    
                                }
                                else if tipTitle == AppreciateTips.tato.rawValue{
                                    Text(AppreciateTips.tato.rawValue)
                                        .frame(width: geometry.size.width * 0.92, height: 70, alignment: .leading)
                                        .font(.system(size: 14.0))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .edgesIgnoringSafeArea(.leading)
                                        .padding(.bottom, 6)
                                        .padding(.leading, 8)
                                }
                                else {
                                    Text(tipTitle)
                                        .frame(width: geometry.size.width * 0.92, height: 100.5, alignment: .leading)
                                        .font(.system(size: 14.0))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .edgesIgnoringSafeArea(.leading)
                                        .padding(.leading, 8)
                                    
                                }
                            }
                            
                            // Telas Maiores
                            
                            else {
                                Text("Sugestão apreciativa")
                                    .frame(width: geometry.size.width * 0.92, height: geometry.size.height * 0.09, alignment: .leading)
                                    .font(.system(size: 16.0))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.colorDefault)
                                    .padding(.leading, 8)
                                
                                if tipTitle == AppreciateTips.paladar.rawValue{
                                    Text(AppreciateTips.paladar.rawValue)
                                        .frame(width: geometry.size.width * 0.92, height: 70, alignment: .leading)
                                        .font(.system(size: 14.0))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .edgesIgnoringSafeArea(.leading)
                                        .padding(.bottom, 6)
                                        .padding(.leading, 8)
                                    
                                }
                                else if tipTitle == AppreciateTips.tato.rawValue{
                                    Text(AppreciateTips.tato.rawValue)
                                        .frame(width: geometry.size.width * 0.92, height: 70, alignment: .leading)
                                        .font(.system(size: 14.0))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .edgesIgnoringSafeArea(.leading)
                                        .padding(.bottom, 6)
                                        .padding(.leading, 8)
                                }
                                else {
                                    Text(tipTitle)
                                        .frame(width: geometry.size.width * 0.92, height: 85, alignment: .leading)
                                        .font(.system(size: 14.0))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .edgesIgnoringSafeArea(.leading)
                                        .padding(.bottom, 6)
                                        .padding(.leading, 8)
                                    
                                }
                            }
                            
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
                            )
                            
                            // "Navigation title" personalizada
                            .toolbar{
                                ToolbarItem(placement: .cancellationAction){
                                    Button(action: {
                                        backHomeAction()
                                    }, label: {
                                        Image(systemName: "chevron.backward.circle.fill")
                                        Text("Sugestões")
                                            .frame(width: 80)
//                                            .padding(.trailing, 5)
                                    }).foregroundColor(.colorDefault)
                                }
                            }
                            
                        }
                        
                    }.frame(height: WKInterfaceDevice.current().screenBounds.size.height)
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
        // .environmentObject(EatingTime())
    }
}

//.padding(.bottom, 6)
