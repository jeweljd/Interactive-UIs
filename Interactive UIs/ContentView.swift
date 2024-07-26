//
//  ContentView.swift
//  Interactive UIs
//
//  Created by Jewel Domingo on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    @State private var age = ""
    @State private var presentAlert = false
    
    var body: some View {
        VStack{
            Text(textTitle)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(Color.gray, width : 1)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Text("What is your age?")
            TextField("", text: $age)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(Color.gray, width : 1)
            Button("Alert"){
                presentAlert = true

            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .alert("Title", isPresented: $presentAlert, actions:{}, message: {Text("You must be over 18 years old to use this app.")})
    }
}

#Preview {
    ContentView()
}
