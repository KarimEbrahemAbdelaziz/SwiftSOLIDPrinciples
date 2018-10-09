//
//  SolidProfileService.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidProfileService: Service {
    
    private let freq: Int
    let userID: String
    
    init(frequency: Int, userID: String) {
        self.freq = frequency
        self.userID = userID
    }
    // MARK: - Protocol conformance
    
    // MARK: Service
    
    func frequency() -> Int {
        return freq
    }
    
    func execute() {
        self.fetchProfileForUserID(userID: userID)
    }
    
    // MARK: - Private methods
    
    private func fetchProfileForUserID(userID: String) {
        print("[SOLID] fetched profile for user \(userID)")
    }
    
}
