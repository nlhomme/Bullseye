//
//  ContentView.swift
//  Bullseye
//
//  Created by Nicolas Lhomme on 06/07/2020.
//  Copyright © 2020 Nicolas Lhomme. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var alertIsVisible: Bool = false

    var body: some View {
        VStack {
            Text("Hello, World!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)

            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $alertIsVisible) { () ->
                Alert in
                return Alert(title: Text("Hello there!"),
                    message: Text("This is my first pop-up!"),
                    dismissButton: .default(Text("Awesome!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
