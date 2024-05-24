//
//  LandmarkListRowImage.swift
//  LandmarkBook
//
//  Created by Fırat Güler on 7.03.2024.
//

import SwiftUI

struct LandmarkListRowImage: View {
    
    var landmarkImageName : String
    
    var body: some View {
        Image(landmarkImageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60,
                   height: 60,
                   alignment: .leading)
            .clipShape(.circle)
            .overlay(Circle().stroke(.white))
            .shadow(radius: 15)
    }
}

#Preview {
    LandmarkListRowImage(landmarkImageName: "pisa")
}
