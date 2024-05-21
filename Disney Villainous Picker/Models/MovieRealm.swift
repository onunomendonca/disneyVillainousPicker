//
//  MovieRealm.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 21/05/2024.
//

import Foundation

enum MovieRealm: String {

    case disney = "Disney"
    case marvel = "Marvel"
    case starWars = "Star Wars"

    var gameBoxes: [GameBoxes] {

        switch self {

        case .disney:
            return [.villainous, .perfectlyWretched, .wickedToTheCore, .evilComesPrepared, .despicablePlots, .biggerAndBadder, .filledWithFright]

        case .marvel:
            return []

        case .starWars:
            return []

        }
    }
}
