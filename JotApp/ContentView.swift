//
//  ContentView.swift
//  JotApp
//
//  Created by Kat Canavan on 8/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""

    var body: some View {
        VStack {
            Image(systemName: "square.and.pencil")
                .imageScale(.large)
                .foregroundColor(.white)
            Spacer(minLength: 10)
            TextEditor(text: $text)
                .frame(width: 275, height: 300)
                .font(.system(size: 14))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
