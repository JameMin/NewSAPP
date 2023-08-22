//
//  Aritcles.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import Foundation

typealias Articles = [Article]

struct Article: Codable, Hashable {
    let source: ArticleSource?
    let author: String?
    let title: String?
    let description: String?
    let url: URL
    let urlToImage: String?
}

