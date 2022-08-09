//
//  Styles.swift
//  DesignCodeIOS15
//
//  Created by Gang Wen on 2022/8/9.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    var cornerRadius: CGFloat
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.6 : 0.3),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1)
                        ], startPoint: .top, endPoint: .bottom
                    )
                )
                .blendMode(.overlay)
        )
    }
}


extension View {
    func strokeStyle(cornerRadius: CGFloat) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
