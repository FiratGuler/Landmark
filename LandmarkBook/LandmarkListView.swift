//
//  LandmarkListView.swift
//  LandmarkBook
//
//  Created by Fırat Güler on 7.03.2024.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        
        NavigationView {
            
            List(landmarkArray) { landmark in
            
                NavigationLink(destination: DetailsView(chosenLandmark: landmark)) {
                    LandmarkListRow(landmark: landmark)
                }
                
            }
        }
        
        
    }
}

#Preview {
    LandmarkListView()
}
