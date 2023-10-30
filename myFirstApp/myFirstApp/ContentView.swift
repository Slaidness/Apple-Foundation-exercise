//
//  ContentView.swift
//  myFirstApp
//
//  Created by Antonio on 23/10/23.
//

import SwiftUI

struct ContentView: View {
   @State private var mainImageName = "parthenope"
   @State private var mainImageLabel = ""
    let defaultImage =  "parthenope"
    var body: some View {
        
        ZStack{
            GeometryReader{ geometry in
                Image("logo")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .edgesIgnoringSafeArea([.top,.bottom])
                    .blur(radius: 5)
                    .opacity(0.15)
                    .frame(width: geometry.size.width)
            }
            
            VStack {
                         //Image(systemName: "globe")
                           //    .imageScale(.large)
                             // .foregroundStyle(.tint)
                Text("Parthenope Team")
                    .foregroundColor(.blue)
                    .font(.system(size: 25))
                    .bold()
                
                Image(mainImageName) //usare parthenope
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .padding(10)
                    .overlay(
                    Text(mainImageLabel)
                        .padding()
                        .foregroundColor(.white)
                        .font(.title), alignment: .bottom
                    )
                
                //            Spacer()
                HStack {
                    
                    circularButton(imageName: "ciaramella", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Angelo Ciarmella")
                        
                    circularButton(imageName: "finizio", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Finizio")
                    
                    circularButton(imageName: "agliata", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Agliata")
                    
                    /*Image("finizio") //usare altri nomi nell assets
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .padding(10)
                    
                    Image("agliata")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .padding(10)
                        */
                    
                } .padding()
                
                HStack {
                    
                    circularButton(imageName: "napolitano", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Napolitano")
                    
                    circularButton(imageName: "dicapua", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Dicapua")
                    
                    circularButton(imageName: "dinardo", mainImage: $mainImageName, mainLabel: $mainImageLabel, defaultName: defaultImage, teamMember: "Dinardo")
                    /*
                    Image("napolitano")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .padding(10)
                      
                    
                    
                    Image("dicapua")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .padding(10)

                    
                    Image("dinardo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .padding(10)
                     */

                } .padding()
                
                
            } //Vstack
        } // ZStack
//        .padding()
    }
}

#Preview {
    ContentView()
}

struct circularButton: View {
    var imageName: String
    @Binding var mainImage: String
    @Binding var mainLabel: String
    var defaultName: String
    var teamMember: String
    
    var body: some View {
        Button(action: {
            if self.mainImage != self.imageName{
                self.mainImage = self.imageName
                self.mainLabel = self.teamMember
            } else {
                self.mainImage = self.defaultName
                self.mainLabel = ""
                
            }
            
        }) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                
        }
    }
}
