//
//  TaskCellViewModel.swift
//  SwiftUI_firebase_practice
//
//  Created by forestkoju on 2020/09/17.
//  Copyright © 2020 forestkoju. All rights reserved.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    
    var id = ""
    @Published var completionStateIconName = ""
    
    private var cancellabel = Set<AnyCancellable>()
    
    init(task: Task) {
        self.task = task
        
        $task
            .map { task in
                task.completed ? "checkmark.circle.fill" : "circle"
        }
            .assign(to: \.completionStateIconName, on: self)
            .store(in: &cancellabel)
        
        $task
            .map { task in
                task.id
        }
            .assign(to: \.id, on: self)
            .store(in: &cancellabel)
    }
    
}
