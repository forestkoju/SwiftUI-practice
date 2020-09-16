//
//  Task.swift
//  SwiftUI_firebase_practice
//
//  Created by forestkoju on 2020/09/16.
//  Copyright © 2020 forestkoju. All rights reserved.
//

import Foundation


struct Task: Identifiable{
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Plan a develpment plan", completed: false),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "Run Test", completed: false)
]
#endif
