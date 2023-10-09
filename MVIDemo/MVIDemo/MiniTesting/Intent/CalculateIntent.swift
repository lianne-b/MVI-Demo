//
//  CalculateIntent.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import Foundation

class CalculateIntent {
    private var model: CalculateModelActionProtocol?
    
    init(model: CalculateModelActionProtocol? = nil) {
        self.model = model
    }
}

extension CalculateIntent: CalculateIntentProtocol {
    func buttonPressed() {
        self.model?.switchRandomOperation()
    }
}
