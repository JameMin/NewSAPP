//
//  SourceRow.swift
//  GetNewsApp
//
//  Created by 서민영 on 2023/08/22.
//

import SwiftUI

struct SourceRow : View {
    let source: Source
    
    var body: some View {
        HStack {
            Text(source.name)
        }
    }
}

