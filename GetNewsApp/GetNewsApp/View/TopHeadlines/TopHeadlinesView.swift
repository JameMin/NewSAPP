//
//  TopHeadlinesView.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI

struct TopHeadlinesView : View {
    let topHeadlines: Articles
    
    var body: some View {
        PageView(topHeadlines.map { TopHeadlineRow(article: $0) })
    }
}

