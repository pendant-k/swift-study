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
                .padding()

            Text("헤드라인 입니다")
                .font(.headline)
                .bold()
                .padding()

            Text("서브 헤드라인 입니다.")
                .font(.subheadline)
                .padding()

            Text("세번째 body 입니다.")
                .font(.system(size: 10))
                .padding()

            HStack {
                MyButton(buttonTitle: "Button 1", buttonColor: .blue,
                         onPressed: {
                             print("first button pressed")
                         })
                MyButton(buttonTitle: "Button 2", buttonColor: .green,
                         onPressed: {
                             print("second button pressed")
                         })
            }

            Button {
                // button event
                print("Hello")
            } label: {
                VStack {
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)

                    Text("Click Me")
                }

                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    ContentView()
}
