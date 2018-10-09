//
//  SolidServiceScheduler.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidServiceScheduler: ServiceScheduler {
    
    // MARK: - Public methods
    
    let timer: STimer
    private var services: [Service]
    
    init(timer: STimer) {
        self.timer = timer
        self.services = []
    }
    
    mutating func registerService(service: Service) {
        services.append(service)
    }
    
    func start() {
        timer.onTick() { tick in
            self.timerDidTick(tick: tick)
        }
        
        timer.start()
    }
    
    func stop() {
        timer.stop()
    }
    
    // MARK: - Private methods
    
    private func timerDidTick(tick: Int) {
        runServicesWithTick(tick: tick)
    }
    
    private func runServicesWithTick(tick: Int) {
        for service in services {
            if (shouldExecuteFrequency(frequency: service.frequency(), onTick:tick)) {
                service.execute()
            }
        }
    }
    
    private func shouldExecuteFrequency(frequency: Int, onTick tick: Int) -> Bool {
        return (tick % frequency) == 0
    }
    
}
