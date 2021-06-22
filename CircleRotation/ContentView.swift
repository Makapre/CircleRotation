//
//  ContentView.swift
//  CircleRotation
//
//  Created by Marius Preikschat on 22.06.21.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    
    var body: some View {
        Circle()
            .strokeBorder(
                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                lineWidth: 5
            )
            .frame(width: 200, height: 200)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .scaleEffect(isLoading ? 1 : 0.9)
            .animation(Animation.default.repeatForever(autoreverses: false))
            .onAppear() {
                self.isLoading = true
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
