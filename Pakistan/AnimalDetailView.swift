//
//  AnimalDetailView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 27/07/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    
//    PROPERTIES
    
    var animals: Animal
    
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
//                HERO IMAGE
                
                Image(animals.image)
                    .resizable()
                    .scaledToFit()
//                TITLE
                
                Text(animals.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
//                HEADLINE
                
                Text(animals.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
//                GALLERY
                
                Group {
                    
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildness in picture")
                    InsertGalleryView(animlas: animals)
                    
                }
                .padding(.horizontal)
                
//                FACTS
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsertFactView(animals: animals)
                }
                
//                DESCRIPTION
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animals.name)")
                    
                    Text(animals.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
//                MAP
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsertMapView()
                }
                .padding(.horizontal)
                
//                LINK
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalLinkView(animals: animals)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Learn about \(animals.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animals: animals[0])
        }
    }
}
