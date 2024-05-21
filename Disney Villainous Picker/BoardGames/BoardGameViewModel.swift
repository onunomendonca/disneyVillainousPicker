//
//  BoardGameViewModel.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 21/05/2024.
//

import Foundation

class BoardGameViewModel: ObservableObject {

    @Published var allGames: [GameBox] = [GameBoxes.villainous.gameBox,
                                          GameBoxes.wickedToTheCore.gameBox,
                                          GameBoxes.evilComesPrepared.gameBox,
                                          GameBoxes.perfectlyWretched.gameBox,
                                          GameBoxes.despicablePlots.gameBox,
                                          GameBoxes.biggerAndBadder.gameBox,
                                          GameBoxes.filledWithFright.gameBox]

    var selectedGames: [GameBox] {

        return allGames.filter { $0.selected }
    }

    func isAtLeastOneGameBoxSelected() -> Bool {

        return allGames.contains { $0.selected }
    }
}
