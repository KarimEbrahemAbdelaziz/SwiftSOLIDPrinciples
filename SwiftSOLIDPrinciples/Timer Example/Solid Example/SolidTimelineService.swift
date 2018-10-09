//
//  SolidTimelineService.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidTimelineService: Service {
    
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
        fetchTimelineForUserID(userID: userID)
    }
    
    // MARK: - Private methods
    
    private func fetchTimelineForUserID(userID: String) {
        print("[SOLID] fetched timeline for user \(userID)")
    }
    
}
