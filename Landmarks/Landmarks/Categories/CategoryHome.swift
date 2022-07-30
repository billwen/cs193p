//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Gang Wen on 2022/7/30.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id:\.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        }

    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
