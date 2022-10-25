//
//  MapView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 25/07/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    //    PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLeavel = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLeavel)
        return mapRegion
    }()
    
    let location: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    
    var body: some View {
        //        Basic Map
        //        Map(coordinateRegion: $region)
        
        //        Advance Map
        
        Map(coordinateRegion: $region, annotationItems: location, annotationContent: { item in
            
            //        old style
            
            //            MapPin(coordinate: item.location)
            
            //            new style
            
            //            MapMarker(coordinate: item.location)
            
            //            custom basic annotation
            
            //            MapAnnotation(coordinate: item.location, content: {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32,height: 32, alignment: .center)
            //            })
            
            //             Custom advance annotation
            
            MapAnnotation(coordinate: item.location) {
                MapNotationView(location: item)
            }
            
        })// MAP
        .overlay(
            HStack(alignment: .center, spacing: 18) {
                Image("compass")
                    .resizable()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.black)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("longitude:")
                            .font(.footnote)
                            .fontWeight(.black)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding(), alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
