//
//  ContentView.swift
//  Bullseye
//
//  Created by Nicolas Lhomme on 06/07/2020.
//  Copyright © 2020 Nicolas Lhomme. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)

    var body: some View {
        VStack {
            Spacer()
            
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("\(target)")
            }
            Spacer()
            
            // Slider row
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            Spacer()
            
            // Button row
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                //let roundedValue = Int(sliderValue.rounded())
                return Alert(title: Text("Hello there!"),message: Text(
                  "The slider's value is \(sliderValueRounded()).\n" +
                  "You scored \(pointsForCurrentRound()) points this round."
                    ), dismissButton: .default(Text("Awesome!")))
            }
            Spacer()
            
            // Score row
            HStack {
                Button(action: {}) {
                    Text("Start over")
                }
                Spacer()
                
                Text("Score:")
                Text("999999")
                Spacer()
                
                Text("Round:")
                Text("999")
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }

    func sliderValueRounded()  -> Int {
        //return Int(sliderValue.rounded())
        Int(sliderValue.rounded())
    }
    
    func pointsForCurrentRound() -> Int {
        //return 100 - abs(target - sliderValueRounded())
        100 - abs(target - sliderValueRounded())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Avec .previewLayout(), on va fixer la résolution (en points)
        // de la preview de Xcode
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
