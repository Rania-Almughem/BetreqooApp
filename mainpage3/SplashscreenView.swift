//
//  SplashscreenView.swift
//  mainpage3
//
//  Created by Majd Abdullah on 02/04/1445 AH.
//


import SwiftUI

struct SplashscreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            
            VStack{
                
                    Color.color
                        .edgesIgnoringSafeArea(.all)
      
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.0)){
                        self.size = 0.5
                        self.opacity = 1
                    }
                }
            }
            
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
    }
}

#Preview {
    SplashscreenView()
}

