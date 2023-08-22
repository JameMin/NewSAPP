//
//  ArticlesReponse.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import Foundation

struct ArticlesResponse: Codable {
    let status: String
    let articles: Articles
}
