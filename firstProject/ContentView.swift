//
//  ContentView.swift
//  firstProject
//
//  Created by Curtis Turk on 03/07/2023.
//

import SwiftUI

enum Emoji: String {
    case 🎉, 🏔️, 🐋, 🦬
}

struct ContentView: View {
    var selection : Emoji = .🎉
    var body: some View {
        Text(selection.rawValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
