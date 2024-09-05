//
//  testliveBundle.swift
//  testlive
//
//  Created by Will Bishop on 4/9/2024.
//

import WidgetKit
import SwiftUI

@main
struct testliveBundle: WidgetBundle {
    var body: some Widget {
        if #available(iOS 16.1, *) {
            testliveLiveActivity()
        }
    }
}
