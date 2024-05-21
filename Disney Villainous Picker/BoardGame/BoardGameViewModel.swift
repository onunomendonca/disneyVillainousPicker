//
//  BoardGameViewModel.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 21/05/2024.
//

import Foundation

class BoardGameViewModel: ObservableObject {

    @Published var allGames: [GameBox] = [GameBoxes.villainous.game,
                                          GameBoxes.wickedToTheCore.game,
                                          GameBoxes.evilComesPrepared.game,
                                          GameBoxes.perfectlyWretched.game,
                                          GameBoxes.despicablePlots.game,
                                          GameBoxes.biggerAndBadder.game,
                                          GameBoxes.filledWithFright.game]

    var selectedGames: [GameBox] = []

    func isAtLeastOneGameBoxSelected() -> Bool {

        return allGames.contains { $0.selected }
    }
}
