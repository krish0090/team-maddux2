//
//  ContentView.swift
//  team-maddux2
//
//  Created by Krish Patel on 1/23/23.
//
//@Environment(\. dismiss)
import SwiftUI

struct ContentView: View {
    @State var editNavigate = false

    var body: some View {
        
                VStack {
                    HStack {
                        
                        Button("Refresh"){
                            
                        }
                        .foregroundColor(Color(uiColor: .blue))
                        .fontDesign(.serif)
                        .font(.system(size: 45))
                        .frame(width: 160, height: 75)
                        .background(Color(uiColor: .cyan))
                        .cornerRadius(20)
                        Text("Team Maddux")
                            .foregroundColor(Color(uiColor: .cyan))
                            .fontDesign(.serif)
                            .font(.system(size: 60))
                            .frame(width: 450, height: 95)
                            .background(.blue)
                            .cornerRadius(20)
                            .underline()
                            .bold()
                        //                Button("Edit"){
                        //
                        //                }
                        
                        Button("Edit"){
                            editNavigate = true
                        }
                            .foregroundColor(Color(uiColor: .blue))
                            .fontDesign(.serif)
                            .font(.system(size: 45))
                            .frame(width: 160, height: 75, alignment: .center)
                            .background(Color(uiColor: .cyan))
                            .cornerRadius(20)
                        
                        
                        
                        
                    }
                    List(0..<1){ item in
                        
                        Text("Events")
                            .font(.system(size: 40))
                    }
                    .environment(\.colorScheme, .dark)
                    
                    
                    
                    
                }
            
                .navigate(to: ContentView2(), when: $editNavigate)
            .padding()
        }

    
}
extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
