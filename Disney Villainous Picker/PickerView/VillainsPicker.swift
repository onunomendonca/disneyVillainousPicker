//
//  VillainsPicker.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import SwiftUI

struct VillainsPicker: View {

    @State var selectedGames: [GameBox]

    var body: some View {

        ZStack {
            Image("background", bundle: nil)
                .resizable()
                .ignoresSafeArea()
                .opacity(0.1)

            VStack {

                Text("Villains Picker")
                    .font(.custom("PirataOne-Regular", size: 40))
                    .padding(.vertical, 3)

                Text("Select the Villains you wish to include on this Picker.")
                    .font(.custom("Esteban-Regular", size: 18))
                    .padding(.bottom, 7)
                    .padding(.top, 0)
                    .multilineTextAlignment(.center)

                List(self.$selectedGames) { $game in

                    Section {

                        Image(game.name.camelCased(), bundle: nil)
                            .resizable()
                            .scaledToFit()
                            .listRowInsets(EdgeInsets())
                            .grayscale(game.isOneCharacterSelected() ? 0 : 0.9)
                    }

                    ForEach($game.characters) { $character in

                        HStack {

                            Text(character.name)
                            Spacer()
                            if character.selected {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            character.selected.toggle()
                        }
                        
                    }

                }
                .listStyle(.grouped)
                .padding(.horizontal, 7)
            }
        }
    }
}

#Preview {
    VillainsPicker(selectedGames: [GameBoxes.villainous.gameBox,
                                   GameBoxes.wickedToTheCore.gameBox,
                                   GameBoxes.evilComesPrepared.gameBox])
    .preferredColorScheme(.dark)
}
