//
//  AnimatedView.swift
//  AnimatedDay
//
//  Created by Artem Pavlov on 16.11.2021.
//

import SwiftUI

struct AnimatedView: View {
    @State private var animation = false
    
    var animationIsOn: Animation {
        Animation.linear(duration: 2.0)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(animation ? "Stop animation" : "Start Animation")
                        .foregroundColor(animation ? .red : .green)
                    Spacer()
                }
            }
            Spacer()
            SunView()
                .frame(width: 150, height: 150)
                .rotationEffect(.degrees(animation ? 360 : 0))
                .animation(animation ? animationIsOn : .default, value: animation)
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            animation.toggle()
        }
    }
}

struct AnimatedView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedView()
    }
}
