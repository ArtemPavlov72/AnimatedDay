//
//  SunView.swift
//  AnimatedDay
//
//  Created by Artem Pavlov on 16.11.2021.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            //let smallLine = size * 0.05
            //let nearLine = size * 0.2
            //let farLine = size * 0.95
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.yellow, .orange.opacity(0.9)]),
                            startPoint: UnitPoint(x: 1, y: 1),
                            endPoint: UnitPoint(x: 0, y: 1)
                        )
                    )
                    .frame(
                        width: width * 0.6,
                        height: height * 0.6
                    )
                Path{ path in
                    path.move(to: CGPoint(x: middle, y: size * 0.05))
                    path.addLine(to: CGPoint(x: middle, y: size * 0.2))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: size * 0.95, y: middle))
                    path.addLine(to: CGPoint(x: size * 0.8, y: middle))
                }
                .stroke(
                    Color.yellow,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: middle, y: size * 0.95))
                    path.addLine(to: CGPoint(x: middle, y: size * 0.8))
                }
                .stroke(
                    Color.yellow,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: size * 0.05, y: middle))
                    path.addLine(to: CGPoint(x: size * 0.2, y: middle))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: size * 0.22, y: size * 0.22))
                    path.addLine(to: CGPoint(x: size * 0.27, y: size * 0.27))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: size * 0.78, y: size * 0.78))
                    path.addLine(to: CGPoint(x: size * 0.73, y: size * 0.73))
                }
                .stroke(
                    Color.yellow,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: size * 0.22, y: size * 0.78))
                    path.addLine(to: CGPoint(x: size * 0.27, y: size * 0.73))
                }
                .stroke(
                    Color.orange,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
                Path{ path in
                    path.move(to: CGPoint(x: size * 0.78, y: size * 0.22))
                    path.addLine(to: CGPoint(x: size * 0.73, y: size * 0.27))
                }
                .stroke(
                    Color.yellow,
                    style: StrokeStyle(
                        lineWidth: 3
                    )
                )
            }
        }
    }
}

struct SunView_Previews: PreviewProvider {
    static var previews: some View {
        SunView()
            .frame(width: 200, height: 200)
    }
}
