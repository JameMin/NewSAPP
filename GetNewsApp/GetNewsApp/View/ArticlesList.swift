//
//  ArticlesList.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI

struct ArticlesList : View {
    @State var articleURL: URL?
    
    @State var articles: [Article]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                ForEach(articles, id: \.self) { article in
                    ArticleRow(article: article)
                        .animation(.spring())
                        .onTapGesture {
                            self.articleURL = article.url
                        }
                }
            }
        }
        .sheet(item: $articleURL) { url in
            SafariView(url: url)
        }
    }
}
