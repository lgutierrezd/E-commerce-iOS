//
//  SettingsView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import SwiftUI

struct SettingsView: View {
    @State private var isShowingAlertLogOut: Bool = false
    @EnvironmentObject var viewModel: UserGlobalStatusViewModel
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Scott Store", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "list.bullet")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        } // HSTACK
                        
                    } // GROUP BOX
                    
                    //MARK: SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Luis Gutierrez Diaz")
                        SettingsRowView(name: "Designer", content: "Robert Petras (Udemy)")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "lgutierrezd`s GitHub", linkDestination: "https://github.com/lgutierrezd")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } // GROUP BOX 2
                    
                    //MARK: SECTION 3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("kjsfklshk  jdsfhksdkjsdhjkfsdk  hjfhjksdhjksdhjkfsdh kjfjkhsdfhjksd khjfjhksdhfkjdskhjfdsh jkfhjsdkjhfhsdk fjksdhfkhsdkjfhsdkjhfkjsdhfkjsdhjkhfksdhflksdjhflksdhls")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                    }
                    
                }// VStack
            } // SCROLLVIEW
            .navigationTitle("Settings")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingAlertLogOut.toggle()
                    }) {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                    }
                    .alert(isPresented: $isShowingAlertLogOut) {
                        Alert(title: Text("Log out"),
                              message: Text("Are you sure?"),
                              primaryButton: .destructive(Text("Yes")) {
                            isShowingAlertLogOut.toggle()
                            viewModel.signOut()
                        },
                              secondaryButton: .default(Text("No")) {
                            isShowingAlertLogOut.toggle()
                        }
                        )
                    }
            )
        }//Navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
