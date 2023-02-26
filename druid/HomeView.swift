//
//  HomeView.swift
//  druid
//
//  Created by Daniel Kalu on 2/22/23.
//

import Foundation

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack {
            
            ContentView()
                .ignoresSafeArea(.all, edges: .all)
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                
                // the image and the text are in the button label, then these are automatically horizontally aligned.
                // so don't need to wrap them in hstack.
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            //: Button
            
                }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
