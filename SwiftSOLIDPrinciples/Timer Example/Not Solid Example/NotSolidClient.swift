//
//  NotSolidClient.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct NotSolidClient: Client {
    
    func startScheduler() {
        let serviceScheduler = NotSOLIDServiceScheduler(userID: "123")
        
        serviceScheduler.start()
    }
    
}
