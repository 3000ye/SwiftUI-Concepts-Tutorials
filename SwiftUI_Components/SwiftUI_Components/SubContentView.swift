//
//  SubContentView.swift
//  SwiftUI_Components
//
//  Created by Castor on 2024/5/2.
//

import SwiftUI

struct SubContentView: View {
    private let title: String;
    private let description: String?;
    
    init(title: String, description: String? = nil) {
        self.title = title;
        self.description = description;
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold();
            
            if description != nil {
                Text(description!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
}

#Preview {
    SubContentView(
        title: "这是标题",
        description: "这是副标题"
    )
}
