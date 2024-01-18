//
//  ContentView.swift
//  swiftui_1
//
//  Created by Donghan Kim on 1/18/24.
//

import SwiftUI

// modifier의 순서는 중요하다.
// SwiftUI를 사용하면 직관적인 코딩이 가능하다.

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text("헤드라인 입니다")
                .font(.headline)
                .bold()

            Text("서브 헤드라인 입니다.")
                .font(.subheadline)
                .padding(.vertical)

            Text("세번째 서브 헤드라인 입니다.")
                .font(.subheadline)
                .padding(.vertical)

            HStack {
                Button {
                    print("First button pressed")
                } label: {
                    Text("Button 1")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                }

                Button {
                    // logic
                } label: {
                    Text("Button 2")
                        .padding()
                        .foregroundColor(.white)
                        .background(.green)
                }
            }

            Button {
                // button event
                print("Hello")
            } label: {
                VStack(
                    Image(systemName: "left")
                    Text("Click Me")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
