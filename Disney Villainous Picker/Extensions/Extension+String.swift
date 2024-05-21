//
//  Extension+String.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 20/05/2024.
//

import Foundation

extension String {

    func camelCased() -> String {
        return self.lowercased()
            .split(separator: " ")
            .enumerated()
            .map { $0.offset > 0 ? $0.element.capitalized : $0.element.lowercased() }
            .joined()
    }
}
