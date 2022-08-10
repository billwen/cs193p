//
//  ContentView.swift
//  DesignCodeIOS15
//
//  Created by Gang Wen on 2022/8/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(10.0)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                .strokeStyle(cornerRadius: 16.0)
            
            Text("SwiftUI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))

            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all)
        .padding(.vertical, 20.0)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30.0, style: .continuous))
        // cornerRadius(30), clipShape(Circle()), mask(Circle().opacity(0.5))
        // Ellipse, Rectangle, Capsule, RoundRectangle
//        .mask(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .strokeStyle(cornerRadius: 30.0)
//        .modifier(StrokeStyle())
//
//        .overlay(
//            RoundedRectangle(cornerRadius: 30, style: .continuous)
////                .stroke(.black, style: .init(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [100, 20], dashPhase: 10))
//                .stroke(.linearGradient(colors:[.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
//                .blendMode(.overlay)
//        )
        .padding(.horizontal, 20.0)
        .background(Image("Blob 1").offset(x: 250, y: -100))
        .overlay(
            Image("Illustration 2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 230)
            .offset(x: 32, y: -80)
        )



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 mini")
        }
        
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 mini")
    }
}