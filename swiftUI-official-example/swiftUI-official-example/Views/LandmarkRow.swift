//
//  LandmarkRow.swift
//  swiftUI-official-example
//
//  Created by Donghan Kim on 1/22/24.
//

import SwiftUI

struct LandmarkRow: View {
    // property
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)

            Text(landmark.name)
            // 차지할 수 있는 영역을 가능한 차지함
            Spacer()
        }
    }
}

// 여러 개의 Preview를 작성하고 확인할 수 있다.
// 이름을 주고 분류할 수 있다.
#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("Salmon") {
    LandmarkRow(landmark: landmarks[1])
}

// 여러개의 View를 한 번에 확인할 수도 있다.
#Preview("Group") {
    Group {
        LandmarkRow(landmark: landmarks[2])
        LandmarkRow(landmark: landmarks[3])
    }
}
