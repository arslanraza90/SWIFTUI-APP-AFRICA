//
//  InsertGalleryView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 27/07/2022.
//

import SwiftUI

struct InsertGalleryView: View {
    
//    PROPERTIES
    
    var animlas: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animlas.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
    
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertGalleryView(animlas: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
