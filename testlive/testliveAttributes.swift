//
//  testliveAttributes.swift
//  liveactivitytest
//
//  Created by Will Bishop on 4/9/2024.
//


import ActivityKit

struct testliveAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}
