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
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("100")
            }
            // Slider row
            HStack {
                Text("1")
                Slider(value: .constant(10))
                Text("100")
            }

            // Button row
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
            
            // Score row
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Avec .previewLayout(), on va fixer la résolution (en points)
        // de la preview de Xcode
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
