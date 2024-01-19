//
//  MyButton.swift
//  swiftui_1
//
//  Created by Donghan Kim on 1/19/24.
//

import SwiftUI

struct MyButton: View {
    var buttonTitle: String
    var buttonColor: Color
    var onPressed: () -> Void

    var body: some View {
        Button {
            onPressed()
        } label: {
            Text(buttonTitle)
                .font(.headline)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    MyButton(buttonTitle: "Test", buttonColor: .blue, onPressed: { print("hello world") })
}
