//
//  OnboardingView.swift
//  rest-api
//
//  Created by Gerardo Cetzal on 28/04/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - BODY

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
