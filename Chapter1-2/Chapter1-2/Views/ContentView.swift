//
//  ContentView.swift
//  Chapter1-2
//
//  Created by Castor on 2024/4/28.
//
//  主界面


import SwiftUI

struct ContentView: View {
    // 初始化日志类
    @StateObject private var journal = Journal();
    
    var body: some View {
        // 日志列表
        NavigationStack {
            // 列表实现
            List(journal.entries) {
                entry in NavigationLink(value: entry) {
                    JournalEntryListItem(journalEntry: entry)
                }
            }
            // 每个列表 item 的详情页面
            .navigationDestination(for: JournalEntry.self) {
                entry in JournalEntryView(journalEntry: entry)
            }
            // 列表 title
            .navigationTitle("Journal")
            // 工具栏
            .toolbar {
                ToolbarItem {
                    Button {
                        journal.addEmptyEntry()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
