//
//  AdviceView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 18/11/22.
//

import SwiftUI

struct AdviceView: View {
    @EnvironmentObject var eatingTime: EatingTime
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Text(self.eatingTime.adviceTitle ?? "")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.colorDefault)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 176, height: 39)
                    .padding(.top, 12)
                
                Text(self.eatingTime.adviceText ?? "")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 176, height: 78)
                    .padding(.bottom, 8)
                
                DefaultButtonView(
                    text: "Ok",
                    width: geometry.size.width * 0.93,
                    height: 44,
                    cornerRadius: 22,
                    action: {
                        self.eatingTime.presentAdvice.toggle()
                    }
                )
            }
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
            .environmentObject(EatingTime())
    }
}