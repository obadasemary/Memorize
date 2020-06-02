//
//  MoviesView.swift
//  Memorize
//
//  Created by Abdelrahman Mohamed on 2.06.2020.
//  Copyright © 2020 Abdelrahman Mohamed. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    var body: some View {
        NavigationView {
            List {
                Image("vikings")
                    .resizable()
                    .scaledToFit()
                Image("1917")
                    .resizable()
                    .scaledToFit()
                Image("survivor")
                    .resizable()
                    .scaledToFit()
                Image("moneyHeist")
                    .resizable()
                    .scaledToFit()
                Image("blackList")
                    .resizable()
                    .scaledToFit()
            }
            .navigationBarTitle(LocalizedStringKey(StringsEnum.movies))
        }
    }
}

struct Movies_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["en", "ar"], id: \.self) { id in
            MoviesView().environment(\.locale, .init(identifier: id))
        }
    }
}
