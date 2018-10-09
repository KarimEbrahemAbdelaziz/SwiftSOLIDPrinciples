//
//  SolidTimer.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

class SolidTimer: STimer {
    
    private var internalTimer: Timer?
    private var tick: Int
    private var tickAction: ((Int) -> ())?
    
    init() {
        self.internalTimer = nil
        self.tick = 0
        self.tickAction = nil
    }
    
    // MARK: - Protocol conformance
    
    // MARK: Timer
    
    func onTick(action: @escaping (Int) -> ()) {
        tickAction = action
    }
    
    func start() {
        internalTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFire(timer:)), userInfo: nil, repeats: true)
    }
    
    func stop() {
        internalTimer?.invalidate()
        internalTimer = nil
    }
    
    // MARK: - Private methods
    
    @objc private func timerDidFire(timer: Timer) {
        tick += 1
        tickAction?(tick)
    }
    
}
