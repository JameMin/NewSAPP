//
//  AritclesFromCategoryViewModel.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI
import Combine

final class ArticlesFromCategoryViewModel: ObservableObject {
    private let apiProvider = APIProvider<ArticleEndpoint>()
    
    private var bag = Set<AnyCancellable>()
    
    @Published private(set) var articles: Articles = []
    
    func getArticles(from category: String) {
        apiProvider.getData(from: ArticleEndpoint.getArticlesFromCategory(category))
            .decode(type: ArticlesResponse.self, decoder: Container.jsonDecoder)
            .map { $0.articles }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.articles, on: self)
            .store(in: &bag)
    }
}

