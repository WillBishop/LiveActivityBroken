//
//  ContentView.swift
//  liveactivitytest
//
//  Created by Will Bishop on 4/9/2024.
//

import SwiftUI
import ActivityKit
struct ContentView: View {
    
    @State var activity: Activity<testliveAttributes>? = nil
    
    var body: some View {
        VStack {
            Button {
                    let activity = testliveAttributes(name: "Test")
                    let state = testliveAttributes.ContentState(emoji: "👍")
                    
                self.activity = try! Activity.request(attributes: activity, content: .init(state: state, staleDate: Date(timeIntervalSinceNow: 120)))
            } label: {
                Text("Start")
            }

        }
        .padding()
        .task {
           
        }
    }
}

#Preview {
    ContentView()
}
