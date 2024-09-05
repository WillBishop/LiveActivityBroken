//
//  testliveLiveActivity.swift
//  testlive
//
//  Created by Will Bishop on 4/9/2024.
//

import ActivityKit
import WidgetKit
import SwiftUI


struct testliveLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: testliveAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension testliveAttributes {
    fileprivate static var preview: testliveAttributes {
        testliveAttributes(name: "World")
    }
}

extension testliveAttributes.ContentState {
    fileprivate static var smiley: testliveAttributes.ContentState {
        testliveAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: testliveAttributes.ContentState {
         testliveAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: testliveAttributes.preview) {
   testliveLiveActivity()
} contentStates: {
    testliveAttributes.ContentState.smiley
    testliveAttributes.ContentState.starEyes
}
