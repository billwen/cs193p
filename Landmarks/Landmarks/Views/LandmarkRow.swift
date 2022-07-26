//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Gang Wen on 2022/7/27.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text(landmark.name)
            Spacer()
        }

    }
}



struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[6])
    }
}
