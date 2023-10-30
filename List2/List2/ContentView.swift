//
//  ContentView.swift
//  Eservizio
//
//  Created by Morgan Biondi on 23/10/23.
//

import SwiftUI

struct Restaurant: Identifiable{
    var id = UUID()
    var name: String
    var image: String
}

    
struct ContentView: View {
    
    var restaurants: [Restaurant] = [
        Restaurant (name: "Cafe Deadend", image: "cafedeadend"),
        Restaurant (name: "Homei", image: "homei"),
        Restaurant (name: "Teakha", image: "teakha"),
        Restaurant (name: "Cafe Loisl", image: "cafeloisl"),
        Restaurant (name: "Petite Oyster", image: "petiteoyster"),
        Restaurant (name: "For Kee Restaurant", image: "forkeerestaurant"),
        Restaurant (name: "Po's Atelier", image: "posatelier"),
        Restaurant (name: "Bourke Street Bakery", image: "bourkestreetbakery"),
        Restaurant (name: "Haigh's Chocolate", image: "haighschocolate"),
        Restaurant (name: "Palomino Espresso", image: "palominoespresso"),
        Restaurant (name: "Five Leaves", image: "fiveleaves"),
        Restaurant (name: "Cafe Lore", image: "cafelore"),
        Restaurant (name: "Confessional", image: "confessional"),
        Restaurant (name: "Barrafina",image: "barrafina"),
        Restaurant (name: "Donostia",image: "donostia"),
        Restaurant (name: "Royal Oak",image: "royaloak"),
        Restaurant (name: "CASK Pub and Kitchen", image: "caskpubandkitchen")
    ]
    
    
    var body: some View {
        
        List(restaurants, id: \.name) { restaurant in
            ExtractedView(restaurant: restaurant)
            
            
            
        }
        
        
    }
    
}
    


struct ExtractedView: View {
    var restaurant: Restaurant
    var body: some View {
        HStack{
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text("\(restaurant.name)")
        }
    }
}
#Preview {
    ContentView()
}
