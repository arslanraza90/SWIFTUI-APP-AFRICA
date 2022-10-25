//
//  CoverImageView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 25/07/2022.
//

import SwiftUI

struct CoverImageView: View {
    
//    Properties
    
    var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
//    BODY
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
