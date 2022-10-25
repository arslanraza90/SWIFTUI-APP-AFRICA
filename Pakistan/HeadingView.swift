//
//  HeadingView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 27/07/2022.
//

import SwiftUI

struct HeadingView: View {
    
//    PROPERTIES
    var headingImage: String
    var headingText: String
    
    var body: some View {
        
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildness in picture")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
