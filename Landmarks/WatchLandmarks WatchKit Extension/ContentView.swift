//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Gang Wen on 2022/8/3.
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
