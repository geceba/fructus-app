//
//  ContentView.swift
//  rest-api
//
//  Created by Gerardo Cetzal on 28/04/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettigns: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettigns = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
            .sheet(isPresented: $isShowingSettigns) {
                SettingsView()
            }
            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
