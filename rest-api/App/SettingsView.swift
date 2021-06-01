//
//  SettingsView.swift
//  rest-api
//
//  Created by Gerardo Cetzal on 26/05/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                            Image("logo").resizable().scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. No hace cholesterol, Fruist are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.").font(.footnote)
                        })
                        
                    }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    })
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        
                        SettingsRowView(name: "Compability", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@elyerry", linkDestination: "twitter.com/g3ceba")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }//: SCROLL
        } //: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
