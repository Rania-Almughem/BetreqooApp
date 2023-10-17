//
//  ContentView.swift
//  mainpage3
//
//  Created by rania on 29/03/1445 AH.
//
import SwiftUI


    struct ContentView: View {
        @State private var moveTextUp = false

        var body: some View {
            ZStack {
                Color.color
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Image("ice")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 1000, height: 400)
                        .padding(.top, 1000)
                }

                VStack {
                    Image("pe")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 200, height: 200)
                        .padding(.top, 1000)
                }

                VStack {
                    Text("هيّــا بنـا نتعــلم مــع")
                        .font(.custom("Ithra", size: 65))
                        .bold()
                        .foregroundColor(Color.color1)
                        .frame(alignment: .center)
                        .kerning(3)
                        .offset(y: moveTextUp ? -20 : 0) // Move text up by 20 points
                        .animation(
                            Animation.easeInOut(duration: 1) // Animation duration and timing curve
                                .repeatForever(autoreverses: true) // Repeats animation indefinitely
                        )

                    Text("بــطريــقو !")
                        .font(.custom("Ithra", size: 65))
                        .bold()
                        .foregroundColor(Color.color2)
                        .frame(alignment: .center)
                        .kerning(3)
                        .offset(y: moveTextUp ? 0 : 20) // Move text down by 20 points
                        .animation(
                            Animation.easeInOut(duration: 1)
                                .repeatForever(autoreverses: true)
                        )
                }
            }
            .onAppear {
                // Start the animation when the view appears
                self.moveTextUp.toggle()
            }
        }
    }


#Preview {
    ContentView()
}
