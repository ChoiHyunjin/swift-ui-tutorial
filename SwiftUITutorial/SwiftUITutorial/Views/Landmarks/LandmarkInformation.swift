//
//  Label.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct LandmarkInformation: View {
    @EnvironmentObject var modelData: ModelData
    var name: String
    var park: String
    var city: String
    var description: String
    var id: Int
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == id } ?? -1
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(name)
                    .font(.title)
                FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
            }
            HStack {
                Text(park)
                Spacer()
                Text(city)
            }.font(.subheadline).foregroundColor(.secondary)
            
        Divider()
        
        Text("About \(name)")
            .font(.title2)
        Text(description)
        }.padding()
    }
}

struct LandmarkInformation_Previews: PreviewProvider {
    
    static var previews: some View {
        let modelData = ModelData()
        let landmarks = modelData.landmarks
        LandmarkInformation(name: landmarks[0].name, park: landmarks[0].park, city: landmarks[0].city, description: landmarks[0].description, id:landmarks[0].id)
            .environmentObject(modelData)
    }
}
