//
//  GameCharacter.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import SwiftUI

struct Character: Identifiable {

    let id = UUID()
    let name: String
    var selected: Bool
}
