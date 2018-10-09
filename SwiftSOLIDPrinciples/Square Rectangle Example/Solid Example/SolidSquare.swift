//
//  SolidSquare.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

struct SolidSquare: SolidShape {
    
    let side: Double
    
    // MARK: - Protocol conformance
    
    // MARK: SOLIDShape
    
    func area() -> Double {
        return side * 2
    }
}
