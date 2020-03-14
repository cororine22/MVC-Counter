//
//  ViewController.swift
//  Countup
//
//  Created by 北本杏菜 on 2020/03/14.
//  Copyright © 2020 北本杏菜. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    
    private let model = CounterModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.output(handler: { [weak self] num in
            self?.counterLabel.text = String(num)
        })
        
        plusButton.addTarget(self, action: #selector(countUp), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(countDown), for: .touchUpInside)
    }
    
    @objc
    private func countUp() {
        model.countUp()
    }
    
    @objc
    private func countDown() {
        model.countDown()
    }
}

