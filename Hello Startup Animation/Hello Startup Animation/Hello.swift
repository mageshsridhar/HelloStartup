//
//  Hello.swift
//  Hello Startup Animation
//
//  Created by Magesh Sridhar on 12/29/24.
//

import SwiftUI
import PureSwiftUI

private let helloLayoutConfig = LayoutGuideConfig.grid(columns: 35, rows: 30)
private typealias Curve = (p: CGPoint, cp1: CGPoint, cp2: CGPoint)

struct Hello: Shape {
    @State var debug : Bool
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let g = helloLayoutConfig.layout(in: rect)
        var curves = [Curve]()
        
        let startPoint = g[2,18]
        let p2 = g[8,13]
        let p3 = g[6,13]
        let p4 = g[5,18]
        let p5 = g[8,15]
        let p6 = g[10,18]
        let p7 = g[14,16]
        let p8 = g[12,15]
        let p9 = g[14,18]
        let p10 = g[19,11]
        let p11 = g[17,17]
        let p12 = g[24,11]
        let p13 = g[23,18]
        let p14 = g[26,15]
        let p15 = g[28,14]
        let p16 = g[30,16]
        let p17 = g[26,16]
        let p18 = g[32,14]
        
        path.move(startPoint)
        curves.append(Curve(p2,g[4,18],g[7,15]))
        curves.append(Curve(p3,g[9,11],g[7,10]))
        curves.append(Curve(p4,g[5,17],g[5,18]))
        curves.append(Curve(p5,g[5,17],g[6,15]))
        curves.append(Curve(p6,g[10,15],g[7,18]))
        curves.append(Curve(p7,g[11,18],g[13,17]))
        curves.append(Curve(p8,g[15,15],g[13,14]))
        curves.append(Curve(p9,g[11,16],g[11,18]))
        curves.append(Curve(p10,g[18,18],g[21,11]))
        curves.append(Curve(p11,g[19,11],g[17,11]))
        curves.append(Curve(p12,g[18,21],g[26,13]))
        curves.append(Curve(p13,g[22,10],g[20,18]))
        curves.append(Curve(p14,g[25,18],g[25,16]))
        curves.append(Curve(p15,p14,g[27,14]))
        curves.append(Curve(p16,g[29,14],g[30,15]))
        curves.append(Curve(p17,g[30,17],g[27,20]))
        curves.append(Curve(p15,p14,g[27,14]))
        curves.append(Curve(p18,p15,g[31,15]))
        
        for curve in curves {
            path.curve(curve.p, cp1: curve.cp1, cp2: curve.cp2, showControlPoints: debug)
        }
        
        return path
    }
}

#Preview {
    Hello(debug: false)
}
