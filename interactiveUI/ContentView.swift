//
//  ContentView.swift
//  interactiveUI
//
//  Created by Scholar on 25/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    //private, otherwise other files can access variables
    @State private var textTitle = "What is your name?"
    
    var body: some View {
       //add code here
        ZStack{
            Color("cream").ignoresSafeArea()
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        .cornerRadius(10)
                        .frame(width:300, height:50)
                    Text(textTitle)
                        .font(.title)
                        .foregroundColor(Color.white)
                }
                TextField("Type your name here...", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .background(Color.white)
                    .border(Color.gray)
                    .frame(width:300, height:50)
                    .padding()
                
                Button("Submit", systemImage: "play.circle") {
                    //print(name)
                    textTitle = "Welcome, \(name)!"
                    name = ""
                }//button
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 16))
                .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
            }//vstack1
        }//zstack1
    }//body
}//struct

#Preview {
    ContentView()
}
