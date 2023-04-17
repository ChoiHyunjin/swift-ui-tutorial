//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
//        '$'는 데이터와 연결하겠다는 '바인딩'
        Map(coordinateRegion: $region)
            .onAppear(perform: {() -> Void in
                setRegion(coordinate)
            })
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let landmarks = ModelData().landmarks
        MapView(coordinate: landmarks[0].locationCorrdinate)
    }
}
