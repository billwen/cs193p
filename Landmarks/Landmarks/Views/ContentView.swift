//
//  ContentView.swift
//  Landmarks
//
//  Created by Gang Wen on 2022/7/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
