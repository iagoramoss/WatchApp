//
//  AdviceView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 18/11/22.
//

import SwiftUI

struct AdviceView: View {
    @EnvironmentObject var meal: Meal
    
    var body: some View {
        ScrollView{
            GeometryReader{ geometry in
                VStack{
                    Text(self.meal.adviceTitle ?? "")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.colorDefault)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: geometry.size.width)
                        .padding(.top, 12)
                        .padding(.bottom, 8)
                    
                    Text(self.meal.adviceText ?? "")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: geometry.size.width - 8)
                        .padding(.bottom, 8)
                    
                    DefaultButtonView(
                        width: geometry.size.width - 12,
                        height: 44,
                        cornerRadius: 22,
                        action: {
                            self.meal.presentAdvice.toggle()
                        },
                        label: {
                            Text("Ok")
                        }
                    )
                }
            }.frame(height: WKInterfaceDevice.current().screenBounds.size.height)
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
            .environmentObject(Meal())
    }
}
