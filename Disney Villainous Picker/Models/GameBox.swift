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

enum GameBoxes {
    case villainous
    case wickedToTheCore
    case evilComesPrepared
    case perfectlyWretched
    case despicablePlots
    case biggerAndBadder
    case filledWithFright

    var game: GameBox {

        switch self {

        case .villainous:
            return GameBox(name: "Villainous", characters: [
                Villains.ursula,
                Villains.captainHook,
                Villains.jafar,
                Villains.maleficent,
                Villains.princeJohn,
                Villains.queenOfHearts
            ], selected: false)
        case .wickedToTheCore:
            return GameBox(name: "Wicked To The Core", characters: [
                Villains.evilQueen,
                Villains.facilier,
                Villains.hades
            ], selected: false)
        case .evilComesPrepared:
            return GameBox(name: "Evil Comes Prepared", characters: [
                Villains.scar,
                Villains.ratigan,
                Villains.yzma
            ], selected: false)
        case .perfectlyWretched:
            return GameBox(name: "Perfectly Wretched", characters: [
                Villains.cruellaDeVil,
                Villains.motherGothel,
                Villains.pete
            ], selected: false)
        case .despicablePlots:
            return GameBox(name: "Despicable Plots", characters: [
                Villains.gaston,
                Villains.hornedKing,
                Villains.wickedStepmother
            ], selected: false)
        case .biggerAndBadder:
            return GameBox(name: "Bigger and Badder", characters: [
                Villains.syndrome,
                Villains.lotso,
                Villains.madameMim
            ], selected: false)
        case .filledWithFright:
            return GameBox(name: "Filled With Fright", characters: [
                Villains.oogieBoogie
            ], selected: false)
        }
    }
}
