//
//  DateView.swift
//  Chapter1-2
//
//  Created by Castor on 2024/4/28.
//
//  日志列表展示中的每一个日志

import SwiftUI

struct DateView: View {
    let date: Date;
    
    private var weekday: String {
        date.formatted(
            Date.FormatStyle().weekday(.abbreviated)
        ).localizedUppercase
    }
    
    private var day: String {
        date.formatted(
            Date.FormatStyle().day()
        )
    }
    
    var body: some View {
        HStack {
            Text("\(weekday)")
                .font(.headline)
            
            Text("\(day)")
                .font(.headline)
        }
    }
}
