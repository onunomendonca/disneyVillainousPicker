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
    var characters: [GameCharacter]
    var selected: Bool
}
