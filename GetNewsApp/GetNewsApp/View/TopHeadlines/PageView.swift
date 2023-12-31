//
//  PageView.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI


struct PageView<Page: View>: View {
    private let viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}
