//
//  ContentView.swift
//  Christine's About Me
//
//  Created by Christine Pitino on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var aboutMe = ""
    var body: some View {
        ZStack {
            
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack {
                Text("Christine")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.735, saturation: 1.0, brightness: 0.755))
                    .padding(.top, 100.0)
                
                Text("Morrill")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.735, saturation: 1.0, brightness: 0.755))
                Spacer ()
            
                HStack  {
                    Image("cat")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                    Image("book")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                    Image("pizza")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                }
                
                Spacer ()
                
                VStack {
                    Text("About Me")
                        .font(.title2)
                        .foregroundColor(Color(hue: 0.735, saturation: 1.0, brightness: 0.755))
                    
                    Text(aboutMe)
                        .font(.headline)
                    
                    Spacer ()
                    
                    Button("Get to know me!") {
                        
                        aboutMe =  "I'm from Connecticut, and I live with my husband and two cats. My sister and her family live about a mile away, so we all get to spend a lot of time together! However, I'm excited to spend two weeks in Boston for Kode With Klossy since I lived there for five years after college!"
                        
                    }
                    .padding(.all)
                    .accentColor(.black)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                }
                      
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
                .shadow(radius: 15)
            .padding()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
