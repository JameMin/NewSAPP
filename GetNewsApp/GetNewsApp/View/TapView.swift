//
//  TapView.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI

struct TabedView : View {
    private let context = CoreDataManager.shared.managedObjectContext
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "globe")
                        .font(.system(size: 22))
                }
            
            SourcesListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                        .font(.system(size: 22))
                }
            
            SearchForArticlesView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 22))
                }
            
            FavoritesView()
                .environment(\.managedObjectContext, context)
                .tabItem {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 22))
                }
            

        }
        .accentColor(.black)
    }
}

