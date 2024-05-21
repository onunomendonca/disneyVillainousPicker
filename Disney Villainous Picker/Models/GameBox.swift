//
//  Games.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import Foundation

struct GameBox {

    static let games: [Game] = [villainous, wickedToTheCore, evilComesPrepared, perfectlyWretched, despicablePlots, biggerAndBadder, filledWithFright ]

    static let villainous = Game(name: "Villainous", characters: [Villains.ursula,
                                                                  Villains.captainHook,
                                                                  Villains.jafar,
                                                                  Villains.maleficent,
                                                                  Villains.princeJohn,
                                                                  Villains.queenOfHearts])

    static let wickedToTheCore = Game(name: "Wicked To The Core", characters: [Villains.evilQueen,
                                                                               Villains.facilier,
                                                                               Villains.hades])

    static let evilComesPrepared = Game(name: "Evil Comes Prepared", characters: [Villains.scar,
                                                                                  Villains.ratigan,
                                                                                  Villains.yzma])

    static let perfectlyWretched = Game(name: "Perfectly Wretched", characters: [Villains.cruellaDeVil,
                                                                                 Villains.motherGothel,
                                                                                 Villains.pete])

    static let despicablePlots = Game(name: "Despicable Plots", characters: [Villains.gaston,
                                                                             Villains.hornedKing,
                                                                             Villains.wickedStepmother])

    static let biggerAndBadder = Game(name: "Bigger and Badder", characters: [Villains.syndrome,
                                                                              Villains.lotso,
                                                                              Villains.madameMim])

    static let filledWithFright = Game(name: "Filled With Fright", characters: [Villains.oogieBoogie])

//    static let sugarAndSpite = Game(name: "Sugar and Spite", characters: [Villains.shereKahn,
//                                                                          Villains.kingCandy])
}
