//
//  BlurView.swift
//  SwiftUIApp
//
//  Created by Muhammed Safaroff on 06.09.22.
//

import SwiftUI

struct BlurView:UIViewRepresentable{
    let style:UIBlurEffect.Style
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
