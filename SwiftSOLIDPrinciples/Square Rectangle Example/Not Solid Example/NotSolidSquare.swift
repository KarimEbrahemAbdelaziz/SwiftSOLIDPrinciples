//
//  NotSolidSquare.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

class NotSolidSquare: NotSolidRectangle {
    
    override func setHeight(value: Double) {
        myHeight = value
        myWidth = value
    }
    
    override func setWidth(value: Double) {
        myWidth = value
        myHeight = value
    }
    
}
