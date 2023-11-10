//
//  SettingsView.swift
//  JotApp
//
//  Created by Kat Canavan on 9/6/23.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("fontSize") private var fontSize = 14.0
    
    var body: some View {
        Form {
            Text("Settings")
                .font(.largeTitle)
                .padding()
            Slider(value: $fontSize, in: 9...36)
            Text("Font Size (\(fontSize, specifier: "%.0f") pts)")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
