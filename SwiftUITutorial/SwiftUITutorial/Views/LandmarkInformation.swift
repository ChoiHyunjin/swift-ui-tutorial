//
//  Label.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct LandmarkInformation: View {
    var name: String
    var park: String
    var city: String
    var description: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(name).font(.title)
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
        LandmarkInformation(name: landmarks[0].name, park: landmarks[0].park, city: landmarks[0].city, description: landmarks[0].description)
    }
}
