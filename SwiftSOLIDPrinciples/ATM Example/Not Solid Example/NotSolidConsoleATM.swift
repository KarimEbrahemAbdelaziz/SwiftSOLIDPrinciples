//
//  NotSolidConsoleATM.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct NotSolidConsoleATM: NotSolidATM {
    
    // MARK: - Protocol conformance
    
    // MARK: ATM
    
    func requestDepositAmount() {
        print("[Not SOLID] Requested deposit")
    }
    
    func requestWithdrawalAmount() {
        print("[Not SOLID] Requested withdrawal")
    }
    
    func requestTransfer() {
        print("[Not SOLID] Requested Transfer")
    }
    
    func informInsufficientFunds() {
        print("[Not SOLID] Insufficient funds!")
    }
}
