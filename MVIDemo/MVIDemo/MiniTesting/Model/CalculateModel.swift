//
//  CalculateModel.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import Foundation

final class CalculateModel:
    ObservableObject,
    CalculateModelStateProtocol,
    CalculateModelActionProtocol
{
    @Published var firstNum: String = ""
    @Published var secondNum: String = ""
    @Published var result: Int = 0
    @Published var randomOrder: Int = Int.random(in: 0..<4)
    
    func switchRandomOperation() {
        if randomOrder == 0 {
            addNumbers()
        } else if randomOrder == 1 {
            subtractNumbers()
        } else if randomOrder == 2 {
            multiplyNumbers()
        } else {
            divideNumbers()
        }
    }
    
    func addNumbers() {
        if let firstNum = Int(self.firstNum),
           let secondNum = Int(self.secondNum) {
            self.result = Int(firstNum) + Int(secondNum)
        }
    }
    
    func subtractNumbers() {
        if let firstNum = Int(self.firstNum),
           let secondNum = Int(self.secondNum) {
            self.result = Int(firstNum) - Int(secondNum)
        }
    }
    
    func multiplyNumbers() {
        if let firstNum = Int(self.firstNum),
           let secondNum = Int(self.secondNum) {
            self.result = Int(firstNum) * Int(secondNum)
        }
    }
    
    func divideNumbers() {
        if let firstNum = Int(self.firstNum),
           let secondNum = Int(self.secondNum) {
            self.result = Int(firstNum) / Int(secondNum)
        }
    }
}
