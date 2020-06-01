//
//  AppView.swift
//  Memorize
//
//  Created by Abdelrahman Mohamed on 1.06.2020.
//  Copyright © 2020 Abdelrahman Mohamed. All rights reserved.
//

import SwiftUI

struct AppView: View {

    let game = EmojiMemoryGame()

    var body: some View {
        TabView {
            EmojiMemoryGameView(viewModel: game)
                .tabItem {
//                    Image(systemName: <#T##String#>)
                    Text("Emoji Game")
            }
            SettingsView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("Settings")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
