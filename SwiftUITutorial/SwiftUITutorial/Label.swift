//
//  Label.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct Label: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("New Jeans").font(.title)
            HStack {
                Text("Josua Tree National Park")
                Spacer()
                Text("California")
            }.font(.subheadline).foregroundColor(.secondary)
            
        Divider()
        
        Text("About Turtle Rock")
            .font(.title2)
        Text("Descriptive text goes here.")
        }.padding()
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        Label()
    }
}
