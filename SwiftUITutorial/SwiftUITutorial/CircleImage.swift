//
//  CircleImage.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import SwiftUI

struct CircleImage: View {
    static let size: CGFloat = 200
    var body: some View {
        Image("NewJeansRabbit")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: CircleImage.size, height: CircleImage.size)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.indigo, lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
