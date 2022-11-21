//
//  AppreciateTips.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 18/11/22.
//

import SwiftUI

enum AppreciateTips: String, CaseIterable {
    case paladar = "Delicie lentamente a sua refeição e tente reconhecer os seus diferentes temperos."
    case tato = "Busque um ambiente tranquilo para realizar a refeição, faz toda diferença!"
    case olfato = "Sinta o aroma da sua comida e perceba suas emoções. Lhe traz alguma lembrança? Qual a sensação?"

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
