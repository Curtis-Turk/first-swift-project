//
//  ContentView.swift
//  firstProject
//
//  Created by Curtis Turk on 03/07/2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🎉, 🏔️, 🐋, 🦬, 🚀
}

struct ContentView: View {
    @State var selection : Emoji = .🎉
    var body: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size: 150))
            Picker("Select Emoji",selection: $selection){
                ForEach(Emoji.allCases, id: \.self){
                    emoji in Text(emoji.rawValue)
                }
            }.pickerStyle(.segmented)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
