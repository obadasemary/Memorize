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
            MoviesView()
                .tabItem {
                    Text(LocalizedStringKey(StringsEnum.movies))
            }
            EmojiMemoryGameView(viewModel: game)
                .tabItem {
                    Text(LocalizedStringKey(StringsEnum.emoji))
            }
            SettingsView()
                .tabItem {
                    Text(LocalizedStringKey(StringsEnum.settings))
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
