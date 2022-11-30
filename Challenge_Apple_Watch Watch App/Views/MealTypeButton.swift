//
//  MealTypeButton.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 30/11/22.
//

import SwiftUI

struct MealTypeButton: View {
    let width: CGFloat
    let text: String
    let action: () -> Void
    
    var body: some View {
        DefaultButtonView(
            width: width - 10,
            height: 45,
            cornerRadius: 22,
            action: {
                action()
            },
            label: {
                HStack{
                    Circle()
                        .frame(width: 24, height: 24)
                    
                    Text(text)
                        .font(.caption2)
                        .fixedSize(horizontal: false, vertical: true)
//                        .padding(.leading, 8)
                }
            }
        )
    }
}
