//
//  SolidSchedulerFactory.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidSchedulerFactory {
    
    static func twitterServiceSchedulerWithUserID(userID: String) -> ServiceScheduler {
        let timer = clockTimer()
        var twitterScheduler = SolidServiceScheduler(timer: timer)
        
        twitterScheduler.registerService(service: SolidServiceFactory.twitterTimelineServiceWithUserID(userID: userID))
        twitterScheduler.registerService(service: SolidServiceFactory.twitterProfileServiceWithUserID(userID: userID))
        
        return twitterScheduler
    }
    
    static func clockTimer() -> STimer {
        return SolidTimer()
    }
    
}
