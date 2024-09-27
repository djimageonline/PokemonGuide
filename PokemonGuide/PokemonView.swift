//
//  PokemonView.swift
//  PokemonGuide
//
//  Created by Johnny Proano on 9/24/24.
//

import SwiftUI

struct PokemonView: View {
    
    var pokemonType: PokemonType

    var body: some View {
                
        ScrollView (showsIndicators: false) {
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 20){
                ForEach(pokemonType.pokemon) { type in
                    NavigationLink {
                        PokemonDetailView(pokemon: type)
                    } label: {
                        Image(type.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
            }
            .navigationTitle(pokemonType.type)
        }
    }
}

#Preview {
    PokemonView(pokemonType: PokemonType(type: "Electric",
                                                pokemon:[
                                                    Pokemon(
                                                        name:"Pikachu",
                                                        about:"When it is angered, it immediately discharges the energy stored in the pouches in its cheeks.",
                                                        hp: 3,
                                                        atk: 4,
                                                        def: 3,
                                                        spatk: 3,
                                                        spdef: 3,
                                                        spd: 6,
                                                        image: "electric-pikachu"
                                                    )
                                                ]
                                        ))
}
