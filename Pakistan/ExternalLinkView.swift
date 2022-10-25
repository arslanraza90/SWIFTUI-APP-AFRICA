//
//  ExternalLinkView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 27/07/2022.
//

import SwiftUI

struct ExternalLinkView: View {
    
    //    PROPERTIES
    
    var animals: Animal
    
    var body: some View {
        GroupBox {
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animals.name, destination: ((URL(string: animals.link) ?? URL(string: "https://wikipedia.org"))!))
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalLinkView_Previews: PreviewProvider {
    static let animlas: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalLinkView(animals: animlas[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
