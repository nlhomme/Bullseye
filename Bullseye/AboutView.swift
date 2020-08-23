//
//  AboutView.swift
//  Bullseye
//
//  Created by Nicolas Lhomme on 23/08/2020.
//  Copyright © 2020 Nicolas Lhomme. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
        Text("🎯 Bullseye 🎯")
        Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.")
        Text("Your goal is to place the slider as close as you can to the target value. The closer you are, the more points you score.")
        Text("''Your first iOS and SwiftUI App'' course follow up on raywenderlish.com")
        Text ("Nicolas Lhomme, 08/23/2020")
        }
        .navigationBarTitle("About Bullseye")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
