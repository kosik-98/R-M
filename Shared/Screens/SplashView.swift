//
//  SplashView.swift
//  R&M
//
//  Created by Dima Kosik on 24.06.24.
//

import Foundation
import SwiftUI
import Lottie

struct SplashView: View {
    var body: some View {
        LottieView(animationFileName: "splash", loopMode: .playOnce)
            .frame(width: 300, height: 300)
    }
}

struct LottieView: UIViewRepresentable {
    
    var animationFileName: String
    let loopMode: LottieLoopMode
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
             
        let lottieAnimationView = LottieAnimationView(name: animationFileName)
             
        lottieAnimationView.contentMode = .scaleAspectFit
        lottieAnimationView.loopMode = loopMode
        lottieAnimationView.play()
         
        lottieAnimationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lottieAnimationView)
         
        NSLayoutConstraint.activate([
          lottieAnimationView.widthAnchor.constraint(equalTo: view.widthAnchor),
          lottieAnimationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
         
        return view
    }
}
