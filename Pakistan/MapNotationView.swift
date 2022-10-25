//
//  MapNotationView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 02/08/2022.
//

import SwiftUI

struct MapNotationView: View {
    
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
//    PROPERTIES
    
    
    var body: some View {
        ZStack {
            
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor ,lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }//ZSTACK
        .onAppear {
            withAnimation(Animation.easeOut.repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapNotationView_Previews: PreviewProvider {
    
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapNotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
