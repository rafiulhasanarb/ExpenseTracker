//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by rafiul hasan on 13/6/22.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(Array(transactionListVM.groupTransactionsByMonth()), id: \.key ) { month, transactions in
                    
                    Section {
                        ForEach(transactions) { transactions in
                            TransactionRow(transaction: transactions)
                        }
                    } header: {
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
       return transactionListVM
    }()
    
    static var previews: some View {
        Group {
            NavigationView {
                TransactionList()
                    .environmentObject(transactionListVM)
            }
            NavigationView {
                TransactionList()
                    .preferredColorScheme(.dark)
                .environmentObject(transactionListVM)
            }
        }
    }
}
