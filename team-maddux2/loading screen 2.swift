//
//  loading screen 2.swift
//  team-maddux2
//
//  Created by Christopher Silva on 1/25/23.
//

import SwiftUI

struct loading_screen_2: View {
    @State var percent: CGFloat = 0
    
    var body: some View {
            VStack(spacing: 100) {
                Text("\(Int(percent))%")
                    .font(.system(size: 40, weight: .bold))
                
                Loading_Screen(width: 300, height: 30, percent: percent, color1: Color(uiColor: .green), color2: Color(uiColor: .cyan))
                    .animation(.spring())
                
                Button(action: { percent = CGFloat.random(in: 0...100) }, label: {
                    Text("Generate Random Number")
                })
            }
        }
    }
        
    
    struct loading_screen_2_Previews: PreviewProvider {
        static var previews: some View {
            loading_screen_2()
        }
    }

