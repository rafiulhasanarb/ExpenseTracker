//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by rafiul hasan on 13/6/22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
