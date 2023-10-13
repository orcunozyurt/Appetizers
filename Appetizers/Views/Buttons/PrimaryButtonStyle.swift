//
//  PrimaryButtonStyle.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 13.10.23.
//

import SwiftUI

struct PrimaryButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.primaryColor)
            .controlSize(.large)
    }
}
