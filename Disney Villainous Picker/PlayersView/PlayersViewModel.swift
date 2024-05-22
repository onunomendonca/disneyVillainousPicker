//
//  PlayersViewModel.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 22/05/2024.
//

import Foundation

class PlayersViewModel: ObservableObject {

    @Published var players: [Player] = []

    func addPlayer(name: String) {

        let player = Player(name: name)
        players.append(player)
    }
}
