//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, rowContent: { landmark in
            NavigationLink(destination: {
                LandmarkDetail(landmark: landmark)
            }, label: {
                LandmarkRow(landmark: landmark)
            })
        })
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
