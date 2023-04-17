//
//  LandmarkDetail.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCorrdinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -CircleImage.size/2)
                .padding(.bottom, -CircleImage.size/2)
            LandmarkInformation(name: landmark.name, park: landmark.park, city: landmark.city, description: landmark.description, id: landmark.id)
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
