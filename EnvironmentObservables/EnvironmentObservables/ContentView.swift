//
//  ContentView.swift
//  EnvironmentObservables
//
//  Created by Antonio on 25/10/23.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var envListItems: ListItems
    @StateObject var listItems = ListItems()
    @State private var selection: Int = 0
    
    
    
    var body: some View {
        TabView(selection: $selection) {
            List {
                ForEach(listItems.items, id: \.self){
                    item in Text(item)
                }
            }
            .tabItem { Text("List") }
            .tag(0)
            
            AddObservedItemView(listItems:  listItems)
                .tabItem { Text("Add") }
                .tag(1)
            
            List{
                ForEach(envListItems.items, id: \.self) {
                    item in Text(item)
                }
            }
            .tabItem { Text("Env List") }
            .tag(2)
            
            AddEnvItemView()
                .tabItem{ Text("Add Env") }
                .tag(3)
                }
                    }
                        }

        

#Preview {
    ContentView()
        .environmentObject(ListItems())
}
