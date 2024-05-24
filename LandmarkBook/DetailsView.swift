//
//  DetailsView.swift
//  LandmarkBook
//
//  Created by Fırat Güler on 7.03.2024.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenLandmark : Landmark
    
    
    var body: some View {
        
        VStack {
            
            MapView(coordinate: chosenLandmark.locaitonCoordinate)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9,
                       height: UIScreen.main.bounds.height * 0.3)
                .offset(y:UIScreen.main.bounds.height * -0.18)
                .padding(.bottom , UIScreen.main.bounds.height * -0.15)
            
            
            VStack(alignment : .leading){
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                
                HStack {
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(londonBridgeLandmark.category)
                        .font(.subheadline)
                }
               
                
            }.padding()
            Spacer()
        }
    }
}
#Preview {
    DetailsView(chosenLandmark: londonBridgeLandmark)
}
