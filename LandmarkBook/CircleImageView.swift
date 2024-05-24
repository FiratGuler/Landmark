//
//  CircleImageView.swift
//  LandmarkBook
//
//  Created by Fırat Güler on 7.03.2024.
//

import SwiftUI

struct CircleImageView: View {
    
    var image : Image
    
    
    var body: some View {
        
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(.circle)
            .overlay(Circle().stroke(.white , lineWidth: 5))
            .shadow(radius: 15)
            
    }
}

#Preview {
    CircleImageView(image: Image("londonbridge"))
}
