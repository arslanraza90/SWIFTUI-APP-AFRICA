//
//  InsertFactView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 27/07/2022.
//

import SwiftUI

struct InsertFactView: View {
    let animals: Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animals.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertFactView(animals: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
