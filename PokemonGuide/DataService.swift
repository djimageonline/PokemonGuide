//
//  DataService.swift
//  PokemonGuide
//
//  Created by Johnny Proano on 9/24/24.
//

import Foundation

struct DataService {
    
    func getPokemonData() -> [PokemonType] {
        
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    let pokemon = try decoder.decode([PokemonType].self, from: data)
                    return pokemon
                }
                catch {
                    print("Cannot get parse data: \(error)")
                }
            }
            catch {
                print("Cannot get data: \(error)")
            }
        }
        return [PokemonType]()
    }
}
