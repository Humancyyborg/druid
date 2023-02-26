//
//  MainView.swift
//  druid
//
//  Created by Daniel Kalu on 2/22/23.
//

import SwiftUI

struct MainView: View {
    // AppStorage: Store the key in the app permanent storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
