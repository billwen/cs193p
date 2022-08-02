//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Gang Wen on 2022/8/2.
//

import SwiftUI

struct ProfileHost: View {
    
    @State
    private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
