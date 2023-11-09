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
        ZStack {
            // Button(s) at the top
            HStack() { // should be at top of frame
                Spacer()
                    .frame(width:260)
                Button() {
                    print("test")
                } label: {
                    Image(systemName: "ellipsis")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 3)
                }
            }
                .frame(height: 355, alignment: .top)
                .buttonStyle(.borderless)
            
            // Main App
            VStack {
                Image(systemName: "square.and.pencil")
                    .imageScale(.large)
                Spacer()
                    .frame(height:15)
                TextEditor(text: $text)
                    .frame(width: 275, height: 300)
                    .font(.system(size: 14))
                    // save text after change (with delay)
                    .onChange(of:text, debounceTime: .seconds(3)) { newValue in
                        saveText(data: text)
                    }
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
