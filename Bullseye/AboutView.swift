//
//  AboutView.swift
//  Bullseye
//
//  Created by Nicolas Lhomme on 23/08/2020.
//  Copyright © 2020 Nicolas Lhomme. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let beige = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255)
    
    struct HeadingStyle: ViewModifier {
        func body (content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
    struct BodyStyle: ViewModifier {
        func body (content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.leading, 60)
                .padding(.trailing, 60)
                .padding(.bottom, 20)
        }
    }
    
    var body: some View {
        Group{
            VStack{
                Text("🎯 Bullseye 🎯").modifier(HeadingStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(BodyStyle())
                Text("Your goal is to place the slider as close as you can to the target value. The closer you are, the more points you score.").modifier(BodyStyle())
                Text("''Your first iOS and SwiftUI App'' course follow up on raywenderlish.com").modifier(BodyStyle())
                Text ("Nicolas Lhomme, 08/23/2020").modifier(BodyStyle())
            }
            .navigationBarTitle("About Bullseye")
            .background(beige)
        }
        .background(Image("Background"), alignment: .center)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
