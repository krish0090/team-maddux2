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
                .fontDesign(.serif)
                .font(.system(size: 50))
                
                .frame(width: 200, height: 100)
                .background(.black)
                .cornerRadius(20)
                Text("Team Maddux")
                    .foregroundColor(.cyan)
                    .background(.black)
                    .fontDesign(.serif)
                    .font(.system(size: 65))
                    .cornerRadius(20)
                
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
