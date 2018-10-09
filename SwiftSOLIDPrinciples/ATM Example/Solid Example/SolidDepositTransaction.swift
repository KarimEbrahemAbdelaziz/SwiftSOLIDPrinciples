//
//  SolidDepositTransaction.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidDepositTransaction: Transaction {
    
    let ui: DepositUI
    
    func execute() {
        ui.requestDepositAmount()
    }
    
}
