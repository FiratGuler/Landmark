//
//  LandmarkListRow.swift
//  LandmarkBook
//
//  Created by Fırat Güler on 7.03.2024.
//

import SwiftUI

struct LandmarkListRow: View {
    
    var landmark : Landmark
    
    var body: some View {
        
        HStack {
            LandmarkListRowImage(landmarkImageName: landmark.imageName)
            Text(landmark.name).padding(20)
        }

    }
}

#Preview {
    LandmarkListRow(landmark: londonBridgeLandmark)
}
