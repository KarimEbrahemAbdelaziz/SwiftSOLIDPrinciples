//
//  NotSolidATM.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

protocol NotSolidATM {
    func requestDepositAmount()
    func requestWithdrawalAmount()
    func requestTransfer()
    func informInsufficientFunds()
}
