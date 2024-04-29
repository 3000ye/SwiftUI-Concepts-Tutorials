//
//  Journal.swift
//  Chapter1-2
//
//  Created by Castor on 2024/4/28.
//

import Foundation
import SwiftUI


// 创建单条日志结构体，其中包含：
// id: 使用 UUID 自动生成
// createdDate: 日志创建日期
// text: 日志文本
struct JournalEntry: Identifiable, Hashable {
    let id = UUID();
    let createdDate: Date;
    var text = "";
    
    init(createdDate: Date = Date(), text: String = "") {
        self.createdDate = createdDate;
        self.text = text;
    }
}


// 日志类
class Journal: ObservableObject {
    @Published var entries: [JournalEntry] = [
        JournalEntry (
            createdDate: today(minus: 2),
            text: "Today is 2 day last."
        ),
        JournalEntry (
            createdDate: today(minus: 5),
            text: "Today is 5 day last."
        )
    ]
    
    func addEmptyEntry() {
        let entry = JournalEntry(
            createdDate: Date(),
            text: "This is a new empty journal."
        );
        
        entries.append(entry);
    }
    
    private static func today(minus days: Int) -> Date {
        let dateComponents = DateComponents(day: -days);
        return Calendar.current.date(byAdding: dateComponents, to: Date()) ?? Date();
    }
}
