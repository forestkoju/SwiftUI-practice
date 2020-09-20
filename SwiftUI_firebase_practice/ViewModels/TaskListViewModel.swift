//
//  TaskListViewModel.swift
//  SwiftUI_firebase_practice
//
//  Created by forestkoju on 2020/09/19.
//  Copyright © 2020 forestkoju. All rights reserved.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModel = [TaskCellViewModel]()
    
    private var cancellabels = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModel = testDataTasks.map { task in
            TaskCellViewModel(task: task)
        }
    }
    
    func addTask(task: Task) {
        let taskVM = TaskCellViewModel(task: task)
        self.taskCellViewModel.append(taskVM)
        
    }
}
