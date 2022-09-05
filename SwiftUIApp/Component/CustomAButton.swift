//
//  CustomAButton.swift
//  SwiftUIApp
//
//  Created by Muhammed Safaroff on 06.09.22.
//

import SwiftUI

struct CustomAButton: View {
    let title: String
    let onTap: ()-> Void
    var body: some View {
        Button(action: onTap) {
            Text(title)
                .frame(width: UIScreen.main.bounds.width-60, height: 50)
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
                .background(Color("button"))
                .cornerRadius(40)
                .padding(.horizontal,30)
            
            
            
        }
        .padding(.bottom,10)
    }
}

struct CustomAButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomAButton(title: "Login", onTap: {})
    }
}
