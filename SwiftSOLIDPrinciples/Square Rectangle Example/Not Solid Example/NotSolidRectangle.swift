//
//  NotSolidRectangle.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

class NotSolidRectangle {
    
    internal var myHeight: Double = 0
    internal var myWidth: Double = 0
    
    func setHeight(value: Double) {
        myHeight = value
    }
    
    func setWidth(value: Double) {
        myWidth = value
    }
    
    func height() -> Double {
        return myHeight
    }
    
    func width() -> Double {
        return myWidth
    }
    
    func area() -> Double {
        return self.height() * self.width()
    }
    
}
