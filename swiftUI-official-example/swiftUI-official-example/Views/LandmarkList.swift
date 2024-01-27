//
//  LandmarkList.swift
//  swiftUI-official-example
//
//  Created by Donghan Kim on 1/23/24.
//

import SwiftUI

struct LandmarkList: View {
    // State -> Flutter의 State와 유사함
    // UI에 변화를 주는 변수
    @State private var showFavoritesOnly = true

    // Getter
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            // showFavoritesOnly -> false이면 모든 item
            !showFavoritesOnly || landmark.isFavorite
        }
    }

    var body: some View {
        // \ -> Landmark struct
        // 구문 특이한 것 같음.
//        List(landmarks, id: \.id) {
//            landmark in LandmarkRow(landmark: landmark)
//        }
        NavigationSplitView {
            // Identifiable 사용하면 단순화 가능
            List {
                // List 내부에 Toggle도 넣는 방법 -> List 내부에 ForEach 사용
                // 이런 방식으로 Footer, Header 등을 넣을 수도 있겠다.
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        // 이동하게 되는 경로
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                Text("That's all!")
                    .multilineTextAlignment(.center)
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
