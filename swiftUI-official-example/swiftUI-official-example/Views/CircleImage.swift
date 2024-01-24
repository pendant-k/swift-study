//
//  CircleImage.swift
//  swiftUI-official-example
//
//  Created by Donghan Kim on 1/20/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

// 빌드에 에러가 있다면 preview가 동작하지 않는다.

#Preview {
    CircleImage(image: Image("icybay"))
}
