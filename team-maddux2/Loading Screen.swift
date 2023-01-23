//
//  Loading Screen.swift
//  team-maddux2
//
//  Created by Christopher Silva on 1/23/23.
//

import SwiftUI

struct Loading_Screen: View {
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 200, height: 20)
            .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 100, height: 20)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct Loading_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Loading_Screen()
    }
}
