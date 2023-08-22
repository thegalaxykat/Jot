//
//  UserDefaults.swift
//  JotApp
//
//  Created by Kat Canavan on 8/22/23.
//

import Foundation

func saveText(data: String) {
    UserDefaults.standard.set(data, forKey: "note")
}

func loadInitialText() -> String {
    // userDefaults returns optional value, nil becomes empty string
    return UserDefaults.standard.string(forKey: "note") ?? ""
}
