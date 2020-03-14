//
//  CounterModel.swift
//  Countup
//
//  Created by 北本杏菜 on 2020/03/14.
//  Copyright © 2020 北本杏菜. All rights reserved.
//

import Foundation

final class CounterModel{
    private(set) var countNumber: Int = 0 {
        didSet {
            handler?(countNumber)
        }
    }
    private var handler: ((Int) -> Void)?
    
    func output(handler: @escaping (Int) -> Void) {
        self.handler = handler
    }
    
    func countUp() {
        countNumber += 1
    }
    
    func countDown() {
        countNumber -= 1
    }
}
