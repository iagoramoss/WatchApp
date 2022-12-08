//
//  MealTypeButton.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 30/11/22.
//

import SwiftUI

struct MealTypeButton: View {
    let width: CGFloat
    let height: CGFloat
    let text: String
    let image: String
    let action: () -> Void
    
    var body: some View {
        DefaultButtonView(
            width: width,
            height: 45,
            cornerRadius: 22,
            action: {
                action()
            },
            label: {
                HStack{
                    Image(image)
                    
                    Text(text)
                        .font(.caption2)
                        .fixedSize(horizontal: true, vertical: true)
                }
            }
        )
    }
}
