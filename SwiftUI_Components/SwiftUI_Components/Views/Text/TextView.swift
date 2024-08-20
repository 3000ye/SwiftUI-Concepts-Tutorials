//
//  TextView.swift
//  SwiftUI_Components
//
//  Created by Castor on 2024/5/2.
//

import SwiftUI

private let github_homePage = "https://github.com/3000ye"

struct TextView: View {
    var body: some View {
        Text("Hello, SwfitUI!")
            .foregroundColor(.blue)
            .font(.largeTitle)
            .bold().italic()
            .shadow(color: .black, radius: 1, x: 0, y: 2)
            .onAppear() {
                print("welcome: Text view page")
            }
        
        Text(github_homePage)
            .foregroundColor(.blue)
            .underline(true, color: .blue)
            .font(.system(size: 16)).onTapGesture {
                print("clicked the github homepage link: \(github_homePage)")
            }
    }
}

#Preview {
    TextView()
}
