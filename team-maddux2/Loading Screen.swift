//
//  Loading Screen.swift
//  team-maddux2
//
//  Created by Christopher Silva on 1/23/23.
//

import SwiftUI

struct Loading_Screen: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 69
    var color1 = Color(uiColor: .magenta)
    var color2 = Color(uiColor: .blue)
    
    var body: some View {
        let multiplier = width / 100
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
            .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                
                )
                .foregroundColor(.clear)
        }
    }
}

struct Loading_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Loading_Screen()
    }
}
