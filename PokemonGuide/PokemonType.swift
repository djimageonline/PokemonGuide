//
//  Pokemon.swift
//  PokemonGuide
//
//  Created by Johnny Proano on 9/24/24.
//

import Foundation

struct PokemonType: Identifiable, Decodable {
    let id = UUID()
    var type: String
    var pokemon: [Pokemon]
}
