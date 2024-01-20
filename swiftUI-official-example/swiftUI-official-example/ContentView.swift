//
//  ContentView.swift
//  swiftUI-official-example
//
//  Created by Donghan Kim on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock!")
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                // VStack 내 전체에 적용
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
        }
    }
}

// 미리보기 설정
#Preview {
    ContentView()
}
