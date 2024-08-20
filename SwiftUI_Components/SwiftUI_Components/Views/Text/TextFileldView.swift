//
//  TextFileldView.swift
//  SwiftUI_Components
//
//  Created by Castor on 2024/5/3.
//

import SwiftUI

struct TextFileldView: View {
    @State var name: String = "";
    @State var password: String = "";
    @State var isEditing: Bool = false;
    
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("昵称：")
                    .foregroundColor(.blue)
                    .font(.title)
                
                // 普通输入框
                TextField(
                    "请输入你的昵称",
                    text: $name,
                    onEditingChanged: { (editing) in
                        print("onEditing: \(editing)");
                        isEditing = editing;
                    }
                ).textFieldStyle(RoundedBorderTextFieldStyle()).background(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.blue, lineWidth: 2)
                )
            }.padding(30).frame(height: 50)
            
            HStack {
                Text("密码：")
                    .foregroundColor(.blue)
                    .font(.title)
                
                // 安全输入框，输入密码使用
                SecureField("请输入你的密码", text: $password) {
                    print("password: \(self.password)")
                }.textFieldStyle(RoundedBorderTextFieldStyle()).background(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.blue, lineWidth: 2)
                )
            }.padding(30).frame(height: 50)
            
            Spacer()
            
            
        }
        .padding()
        .onAppear {
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
                withAnimation {
                    self.isEditing = true
                }
            }
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { notification in
                withAnimation {
                    self.isEditing = false
                }
            }
        }
    }
}

#Preview {
    TextFileldView()
}
