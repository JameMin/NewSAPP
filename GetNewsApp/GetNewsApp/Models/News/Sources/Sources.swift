//
//  Sources.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import Foundation

typealias Sources = [Source]

struct Source: Codable, Hashable {
    let id: String
    let name: String
    let description: String?
    let url: URL
    let category: String
    let language: String
    let country: String
}

struct SourcesResponse: Codable {
    let status: String
    let sources: Sources
}

