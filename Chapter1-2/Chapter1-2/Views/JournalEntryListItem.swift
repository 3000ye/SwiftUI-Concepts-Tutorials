//
//  JournalEntryListItem.swift
//  Chapter1-2
//
//  Created by Castor on 2024/4/28.
//
//  日志列表展示


import SwiftUI

struct JournalEntryListItem: View {
    let journalEntry: JournalEntry;
    
    var body: some View {
        VStack(alignment: .leading) {
            DateView(date: journalEntry.createdDate);
            Text("\(journalEntry.text)")
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        }
    }
}
