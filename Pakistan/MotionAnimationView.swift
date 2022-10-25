//
//  MotionAnimationView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 02/08/2022.
//

import SwiftUI

struct MotionAnimationView: View {
    
    //        PROPERTIES
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    
    // MARK: - Functions
    
//    Random cordinates
    func randomCordinates(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
//    Random size
    
    func randomSize() -> CGFloat{
        return CGFloat(Int.random(in: 10...300))
    }
//    Random scale
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
//    Random speed
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
//    Random delay
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                ForEach(0...randomCircle, id: \.self ) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCordinates(max: geometry.size.width),
                            y: randomCordinates(max: geometry.size.height)
                            )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }//LOOP
            }//ZSTACK
            .drawingGroup()
            
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
