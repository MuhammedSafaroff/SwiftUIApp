//
//  SosialButton.swift
//  SwiftUIApp
//
//  Created by Muhammed Safaroff on 06.09.22.
//

import SwiftUI

struct SosialButton: View {
    let image:String
    let onTap:() -> Void
    var body: some View {
        
        Button(action:onTap) {
            ZStack{
                BlurView(style: .regular)
                    .cornerRadius(40)
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(EdgeInsets(top: 12, leading: 15, bottom: 15, trailing: 15))
                    .frame(width: 52, height: 52)
                    .overlay(RoundedRectangle(cornerRadius:30)
                        .stroke(.white.opacity(0.6),lineWidth: 1))
            }.frame(width: 52, height: 52)
            
            
        }
    }
}

struct SosialButton_Previews: PreviewProvider {
    static var previews: some View {
        SosialButton(image: "apple", onTap: {})
    }
}
