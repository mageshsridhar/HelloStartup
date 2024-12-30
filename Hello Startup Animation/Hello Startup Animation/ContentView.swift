//
//  ContentView.swift
//  Hello Startup Animation
//
//  Created by Magesh Sridhar on 12/29/24.
//

import SwiftUI
import PureSwiftUI

struct ContentView: View {
    @State private var start = 0.0
    @State private var end = 0.0
    @State private var lineWidth : CGFloat = 12
    @State private var number = 0
    let timer = Timer.publish(every: 9.2, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Hello(debug: false)
                .trim(from: start, to: end)
                .stroke(.black, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                .frame(width:UIScreen.main.bounds.size.width - 40, height: UIScreen.main.bounds.size.height/2)
        }
        .onAppear() {
            animate()
        }
        .onReceive(timer) { _ in
            animate()
        }
    }
}

extension ContentView {
    func animate() {
        withAnimation(.easeInOut(duration: 4).delay(1)){
                end = 1.0
            }
        withAnimation(.easeInOut(duration: 4).delay(5)){
                start = 1.0
            }
        withAnimation(.easeInOut(duration: 0.1).delay(9)){
            start = 0
            end = 0
        }
    }
}

#Preview {
    ContentView()
}
