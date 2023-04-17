//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList().navigationTitle("Landmarks")    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
