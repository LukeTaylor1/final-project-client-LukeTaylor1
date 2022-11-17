//
//  TaskView.swift
//  OCKSample
//
//  Created by  on 11/2/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    @StateObject var viewModel = TaskViewModel()

    // options for care view cards
    var cardViewList = [CareKitCard.button, CareKitCard.checklist, CareKitCard.instruction]

         var body: some View {
             NavigationView {
                 Form {
                     TextField("Title",
                               text: $viewModel.title)
                     TextField("Instructions",
                               text: $viewModel.instructions)
                     DatePicker(selection: $viewModel.endDate, in: Date()..., displayedComponents: .date) {
                         Text("Select End Date")
                     }
                     Picker("Card View", selection: $viewModel.selectedCard) {
                         ForEach(cardViewList) { item in
                             Text(item.rawValue)
                         }
                     }
                     Section("Task") {
                         Button("Add") {
                             Task {
                                 await viewModel.addTask()
                             }
                         }
                     }
                     Section("HealthKitTask") {
                         Button("Add") {
                             Task {
                                 await viewModel.addHealthKitTask()
                             }
                         }
                     }
                 }
             }
         }
     }

 struct TaskView_Previews: PreviewProvider {
     static var previews: some View {
         TaskView()
     }
 }
