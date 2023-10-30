//
//  AddObservedItemView.swift
//  EnvironmentObservables
//
//  Created by Antonio on 25/10/23.
//

import SwiftUI

struct AddObservedItemView: View {
    @ObservedObject var listItems: ListItems
    
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
    AddObservedItemView(listItems: ListItems())
}
