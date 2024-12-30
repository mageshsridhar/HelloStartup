//
//  ContentView.swift
//  Hello Startup Animation
//
//  Created by Magesh Sridhar on 12/29/24.
//

import SwiftUI
import PureSwiftUI

struct ContentView: View {
    @State private var progress = 0.0
    @State private var lineWidth : CGFloat = 12
    @State private var number = 0
    var body: some View {
        VStack {
            Hello(debug: false)
                .trim(from: 0, to: progress)
                .stroke(.black, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                .frame(width:UIScreen.main.bounds.size.width - 40, height: UIScreen.main.bounds.size.height/2)
        }
        .onAppear() {
            withAnimation(.easeInOut(duration: 4).delay(1).repeatForever(autoreverses: true)){
                    progress = 1.0
                }
        }
    }
}

#Preview {
    ContentView()
}
