//
//  CenterModifier.swift
//  Wildlife Animals
//
//  Created by Loi Pham on 4/7/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
