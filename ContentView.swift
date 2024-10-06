//
//  ContentView.swift
//  Emoji Lover
//
//  Created by Kamrin Bains on 3/31/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😭,😫,🤯,🤩,💪,🤡
}
enum Emoji2: String, CaseIterable {
    case 🥺,🤓,🤫,😏,🥸,🥱
}


struct ContentView: View {
    @State var selection: Emoji = .😭
    @State var selection2: Emoji2 = .🥺
    var body: some View {
        NavigationView{
        VStack {
            Spacer()
            Text(selection.rawValue)
                .font(.system(size:150))
            Spacer()
            Text(selection2.rawValue)
                .font(.system(size:150))
            
            Picker("Select Emoji", selection: $selection2)
            {
                ForEach(Emoji2.allCases, id: \.self)
                {
                    emoji in Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
            
            Picker("Select Emoji", selection: $selection)
            {
                ForEach(Emoji.allCases, id: \.self)
                {
                    emoji in Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        .navigationTitle("Emoji Lovers!")
        .onAppear()
        .padding()
    }
}
}

#Preview {
    ContentView()
}
