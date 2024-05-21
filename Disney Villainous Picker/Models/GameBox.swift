//
//  Game.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import Foundation

struct GameBox: Identifiable {

    var id = UUID()
    let name: String
    var characters: [Character]
    var selected: Bool

    func isOneCharacterSelected() -> Bool {

        return characters.contains { $0.selected }
    }
}
