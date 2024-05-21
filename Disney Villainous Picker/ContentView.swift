//
//  ContentView.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(GameBox.games, id: \.name) { game in

            Section {

                Image(game.name.camelCased(), bundle: nil)
                    .resizable()
                    .scaledToFit()
                    .listRowInsets(EdgeInsets())
                    .grayscale(game.areAllCharactersDeselected() ? 1.0 : 0.0)
            }

            ForEach(0..<game.characters.count) { index in

                HStack {

                    Text(game.characters[index].name)
                    Spacer()
                    if game.characters[index].selected {
                        Image(systemName: "checkmark")
                    }
                }
                .onTapGesture {
                    game.characters[index].selected.toggle()
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
