//
//  Timer.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import Foundation

protocol STimer {
    func onTick(action: @escaping (Int) -> ())
    func start()
    func stop()
}
