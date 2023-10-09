//
//  Container.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import SwiftUI
import Combine

final class MVIContainer<CalculateIntent, CalculateModel>: ObservableObject {
    var intent: CalculateIntent
    var model: CalculateModel
    
    private var cancellable: Set<AnyCancellable> = []
    
    init(intent: CalculateIntent, model: CalculateModel) {
        self.intent = intent
        self.model = model
    }
}
