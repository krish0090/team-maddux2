//
//  ContentView.swift
//  team-maddux2
//
//  Created by Krish Patel on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button("Refresh"){
                    
                }
                .foregroundColor(.blue)
                .background(.black)
                .fontDesign(.serif)
                .font(.system(size: 40))
                Text("Team Maddux")
                    .foregroundColor(.cyan)
                    .background(.black)
                    .fontDesign(.serif)
                    .font(.system(size: 50))
                
            }
            
        }
    
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
