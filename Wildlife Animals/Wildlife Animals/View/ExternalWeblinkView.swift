//
//  ExternalWeblinkView.swift
//  Wildlife Animals
//
//  Created by Loi Pham on 4/6/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                
                    // ?? Double question mark is a nil-coalescing operator. In plain terms, it is just a shorthand for saying != nil . First it checks if the the return value is nil, if it is indeed nil, then the left value is presented, and if it is nil then the right value is presented.
                    Link(animal.name,
                         destination:
                            (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!
                         ) //: LINK
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUP-BOX
    }
}

// MARKL - PREVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json").shuffled()
    static var previews: some View {
        ExternalWeblinkView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
