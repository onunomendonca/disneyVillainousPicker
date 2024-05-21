//
//  Game.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import Foundation

struct Game {

    let name: String
    var characters: [GameCharacter]
    var selected: Bool = false

    func areAllCharactersDeselected() -> Bool {

        var areAllDeselected = true

        self.characters.forEach { character in

            if character.selected == true {

                areAllDeselected = false
            }
        }

        return areAllDeselected
    }
}

