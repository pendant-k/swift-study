//
//  LandmarkList.swift
//  swiftUI-official-example
//
//  Created by Donghan Kim on 1/23/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // \ -> Landmark struct
        // 구문 특이한 것 같음.
//        List(landmarks, id: \.id) {
//            landmark in LandmarkRow(landmark: landmark)
//        }
        NavigationSplitView {
            // Identifiable 사용하면 단순화 가능
            List(landmarks) { landmark in

                NavigationLink {
                    // 이동하게 되는 경로
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
