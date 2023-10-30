//
//  AddEnvItemView.swift
//  EnvironmentObservables
//
//  Created by Antonio on 25/10/23.
//

import SwiftUI

struct AddEnvItemView: View {
    @EnvironmentObject var listItems: ListItems
    
    var body: some View {
        VStack{
            Button(action: {
                listItems.items.append("\(listItems.items.count) Raccoon")
            }, label: {
                Text("Add item")
            })
            Text("New item count: \(listItems.items.count)")
        }
 
    }
}

#Preview {
    AddEnvItemView()
}
