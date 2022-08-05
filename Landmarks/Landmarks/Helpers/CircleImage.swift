//
//  CircleImage.swift
//  Landmarks
//
//  Created by Gang Wen on 2022/7/26.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image.clipShape(Circle())
            .overlay {
                Circle().stroke(.white)
            }
            .shadow(radius: 7.0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:  Image("turtlerock"))
    }
}
