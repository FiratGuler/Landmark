//
//  MapView.swift
//  LandmarkBook
//
//  Created by Fırat Güler on 7.03.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.02,
                                    longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate,
                                        span: span)
        uiView.setRegion(region, animated: true)
        
    }
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
    }
    
   
}

#Preview {
    MapView(coordinate: landmarkArray[0].locaitonCoordinate)
}
