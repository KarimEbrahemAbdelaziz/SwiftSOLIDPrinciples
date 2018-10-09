//
//  SolidServiceFactory.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidServiceFactory {
    
    static func twitterTimelineServiceWithUserID(userID: String) -> Service {
        return SolidTimelineService(frequency: 1, userID: userID)
    }
    
    static func twitterProfileServiceWithUserID(userID: String) -> Service {
        return SolidProfileService(frequency: 2, userID: userID)
    }
    
}
