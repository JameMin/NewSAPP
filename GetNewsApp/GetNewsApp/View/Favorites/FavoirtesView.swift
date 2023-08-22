//
//  FavoirtesView.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: LocalArticle.entity(), sortDescriptors: [
        NSSortDescriptor(key: "savingDate", ascending: false)
    ]) var articles: FetchedResults<LocalArticle>
    @State var articleURL: URL?
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center) {
                    ForEach(articles, id: \.self) { article in
                        LocalArticleRow(article: article)
                            .animation(.spring())
                            .onTapGesture {
                                self.articleURL = article.url
                            }
                    }
                }
            }
            .navigationBarTitle(Text(Constants.title), displayMode: .automatic)
            .sheet(item: $articleURL) { url in
                SafariView(url: url)
            }
        }
    }
}

private extension FavoritesView {
    
    struct Constants {
        static let title = "Favorites".localized()
    }
}
