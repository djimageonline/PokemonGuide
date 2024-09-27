//
//  ContentView.swift
//  PokemonGuide
//
//  Created by Johnny Proano on 9/24/24.
//

import SwiftUI

struct MainCategoryView: View {
    
    @State var pokemonType = [PokemonType]()
    var dataService = DataService()
    
    
    var body: some View {
        

        NavigationStack {
            
            ScrollView(showsIndicators: false){
                VStack(spacing: 20) {
                    ForEach(pokemonType) { type in
                        NavigationLink {
                            PokemonView(pokemonType: type)
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(getColorbyCategory(category: type.type))
                                
                                HStack {
                                    Image(systemName: getIconByCategory(category: type.type))
                                    Text(type.type)
                                        .bold()
                                }
                                .foregroundStyle(.black)
                                .padding(.vertical)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Categories")
        }
        .onAppear{
            pokemonType = dataService.getPokemonData()
        }
    }
    
    func getColorbyCategory(category: String) -> Color {
        switch (category) {
        case "Electric":
            return Color.yellow
        case "Grass":
            return Color.green
        case "Fire":
            return Color.red
        case "Water":
            return Color.cyan
        default:
            return Color.gray
        }
    }
    
    func getIconByCategory(category: String) -> String{
        switch (category) {
        case "Electric":
            return "bolt.circle"
        case "Grass":
            return "flame.circle"
        case "Fire":
            return "leaf.circle"
        case "Water":
            return "drop.circle"
        default:
            return ""
        }
    }
}

#Preview {
    MainCategoryView()
}
