//
//  ContentView.swift
//  SwiftUI_Components
//
//  Created by Castor on 2024/5/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("基础控件")) {
                    NavigationLink(destination: TextView()) {
                        SubContentView(title: "Text", description: "显示一行或多行只读文本")
                    }
                    NavigationLink(destination: TextFileldView()) {
                        SubContentView(title: "TextField", description: "文字输入框")
                    }
                }
                Section(header: Text("按钮")) {
                    NavigationLink(destination: ButtonView()) {
                        SubContentView(title: "Button", description: "触发时执行操作的按钮")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Hello SwiftUI"), displayMode: .large)
            .navigationBarItems(
                trailing: Button(
                    action: {
                        print("Hello SwiftUI!")
                    },
                    label: {
                        Text("Done").foregroundColor(.blue)
                    }
                )
            )
        }
    }
}

#Preview {
    ContentView()
}
