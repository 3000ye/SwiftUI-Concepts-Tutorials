//
//  ButtonView.swift
//  SwiftUI_Components
//
//  Created by Castor on 2024/5/3.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(
            action: {
                print("Hello SwiftUI!")
            }
        ) {
            Text("I'm a Button")
                .bold().italic()
                .font(.largeTitle)
        }.navigationBarTitle("Button")
    }
}

#Preview {
    ButtonView()
}
