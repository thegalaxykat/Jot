//
//  ContentView.swift
//  JotApp
//
//  Created by Kat Canavan on 8/21/23.
//

import SwiftUI
import DebouncedOnChange

struct ContentView: View {
    @State var text = loadInitialText()

    var body: some View {
        VStack {
            Image(systemName: "square.and.pencil")
                .imageScale(.large)
                .foregroundColor(.white)
            Spacer()
                .frame(height:15)
            TextEditor(text: $text)
                .frame(width: 275, height: 300)
                .font(.system(size: 14))
                // save text after change
                .onChange(of:text, debounceTime: .seconds(3)) { newValue in
                    saveText(data: text)
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
