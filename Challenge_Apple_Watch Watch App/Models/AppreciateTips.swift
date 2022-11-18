//
//  AppreciateTips.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 18/11/22.
//

import SwiftUI

enum AppreciateTips: String, CaseIterable {
    case tato = "Delicie lentamente a sua refeição e tente reconhecer os seus diferentes temperos."
    case paladar = "Sinta a textura da sua comida. É fácil morder ou é preciso que você quebre enquanto mastiga?"
    case olfato = "Sinta o aroma da sua comida perceba suas emoções. Lhe traz alguma lembrança ? Qual a sensação?"

    var image: Image {
        switch self {
        case .tato:
            return .tato
        case .paladar:
            return .paladar
        case .olfato:
            return .olfato
        }
    }
}
