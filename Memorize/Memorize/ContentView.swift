//
//  ContentView.swift
//  Memorize
//
//  Created by Gang Wen on 2022/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack{
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(lineWidth: 3.0)
            
            Text("Hello, world!")
        }
        .padding(.horizontal)
        .foregroundColor(.red)

    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
