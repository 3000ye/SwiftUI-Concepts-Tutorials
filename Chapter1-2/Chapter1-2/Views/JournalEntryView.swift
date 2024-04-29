//
//  JournalEntryView.swift
//  Chapter1-2
//
//  Created by Castor on 2024/4/29.
//
//  日志详情页

import SwiftUI

struct JournalEntryView: View {
    let journalEntry: JournalEntry;
    
    private var title: String {
        journalEntry.createdDate.formatted(Date.FormatStyle()
            .weekday(.abbreviated)
            .month(.abbreviated)
            .day()
            .year()
        )
    }
    
    var body: some View {
        ScrollView {
            Text(journalEntry.text)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        
        #if os(iOS)
        .navigationTitle(title)
        #elseif os(macOS)
        .navigationSubtitle(title)
        #endif
    }
}
