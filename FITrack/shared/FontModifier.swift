//
//  FontModifier.swift
//  FITrack
//
//  Created by Dharam Dhurandhar on 29/12/23.
//

import SwiftUI

enum FontWeight {
    case light
    case regular
    case medium
    case semiBold
    case bold
    case black
}

extension Font {
    static let customFont: (FontWeight, CGFloat) -> Font = { fontType, size in
        switch fontType {
        case .light:
            Font.custom("Outfit-Thin_Light", size: size)
        case .regular:
            Font.custom("Outfit-Thin_Regular", size: size)
        case .medium:
            Font.custom("Outfit-Thin_Medium", size: size)
        case .semiBold:
            Font.custom("Outfit-Thin_SemiBold", size: size)
        case .bold:
            Font.custom("Outfit-Thin_Bold", size: size)
        case .black:
            Font.custom("Outfit-Thin_Black", size: size)
        }
    }
}

extension Text {
    func customFont(_ fontWeight: FontWeight? = .regular, _ size: CGFloat? = nil) -> Text {
        return self.font(.customFont(fontWeight ?? .regular, size ?? 16))
    }
}
