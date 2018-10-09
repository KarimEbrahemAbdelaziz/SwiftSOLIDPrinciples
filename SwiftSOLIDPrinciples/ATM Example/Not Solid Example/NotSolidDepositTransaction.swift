//
//  NotSolidDepositTransaction.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct NotSolidDepositTransaction: Transaction {
    
    let ui: NotSolidATM
    
    // MARK: - Protocol conformance
    
    // MARK: Transaction
    
    func execute() {
        ui.requestDepositAmount()
        ui.requestWithdrawalAmount() // OOPS! DepositTransaction should NOT be able to do this
    }
    
}
