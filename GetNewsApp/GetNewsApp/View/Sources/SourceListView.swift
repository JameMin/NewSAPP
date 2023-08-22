//
//  SourceListView.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI

struct SourcesListView : View {
    @ObservedObject var viewModel = SourcesListViewModel()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                if viewModel.sources.isEmpty {
                    ActivityIndicator()
                        .frame(width: UIScreen.main.bounds.width,
                               height: 50,
                               alignment: .center)
                } else {
                    List(viewModel.sources, id: \.self) { source in
                        NavigationLink(
                            destination: ArticlesFromSourceView(source: source)
                                .navigationBarTitle(Text(source.name)),
                            label: {
                                Text(source.name)
                            }
                        )
                    }
                    .listStyle(GroupedListStyle())
                    .environment(\.horizontalSizeClass, .regular)
                    .animation(.spring())
                }
            }
            .onAppear {
                self.viewModel.getSources()
            }
            .navigationBarTitle(Text("Sources".localized()), displayMode: .large)
        })
    }
}

