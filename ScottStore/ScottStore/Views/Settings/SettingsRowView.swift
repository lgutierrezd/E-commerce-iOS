//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Luis Gutierrez on 5/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Luis Gutierrez Diaz")
                .previewLayout(.fixed(width: 375, height: 60))
            SettingsRowView(name: "Website", linkLabel: "lgutierrezd`s GitHub", linkDestination: "https://github.com/lgutierrezd")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
        }
    }
}
