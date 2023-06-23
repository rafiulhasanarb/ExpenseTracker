//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by rafiul hasan on 13/6/22.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "01/16/2022", institution: "Description", account: "Master", merchant: "Apple", amount: 120, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: false, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 20)

