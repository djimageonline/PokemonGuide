//
//  PokemonDetailView.swift
//  PokemonGuide
//
//  Created by Johnny Proano on 9/24/24.
//

import SwiftUI

struct PokemonDetailView: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top){
                Image(pokemon.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                
                VStack (alignment: .leading)  {
                    Text("Stats")
                        .bold()
                        .padding(.bottom, 20)
                    
                    Text("Hp: \(pokemon.hp)")
                    Text("Attack: \(pokemon.atk)")
                    Text("Defense: \(pokemon.def)")
                    Text("Special Attack: \(pokemon.spatk)")
                    Text("Special Defense: \(pokemon.spdef)")
                    Text("Speed: \(pokemon.spd)")
                }
            }
            Text("\(pokemon.about)")
            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle(pokemon.name)
    }
}

#Preview {
    PokemonDetailView(pokemon: Pokemon(
                name:"Pikachu",
                about:"When it is angered, it immediately discharges the energy stored in the pouches in its cheeks.",
                hp: 3,
                atk: 4,
                def: 3,
                spatk: 3,
                spdef: 3,
                spd: 6,
                image: "electric-pikachu"
    ))
}
