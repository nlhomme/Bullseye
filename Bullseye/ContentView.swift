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
    @State var knockAlertIsVisible: Bool = false

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
            Button(action: {
                print("User wants a knock kock joke")
                self.knockAlertIsVisible = true
            })
                {
                HStack {
                    Image(systemName: "person.icloud.fill")
                    Text("Knock knock!")
                }
            }
            .buttonStyle(GradientButtonStyle())
            .frame(alignment: .topLeading)
            .alert(isPresented: $knockAlertIsVisible) { () ->
                Alert in
                return Alert(title: Text("Who's there?"),
                    message: Text("Tank"),
                    dismissButton: .default(Text("Tank who?")))
            }
        }
    }
}

// Déclaration d'un style de bouton
struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            // Couleur du premier plan (le texte)
            .foregroundColor(Color.white)
            // Rembourrage du bouton
            .padding()
            // Propriété de l'arrière plan
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            // Arrondissement des coins du bouton
            .cornerRadius(15.0)
            // Effet de rembondissement quand on appuie sur le bouton
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
