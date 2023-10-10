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
    
    init(
        intent: CalculateIntent,
        model: CalculateModel,
        modelChangedPublisher: ObjectWillChangePublisher
    ) {
        self.intent = intent
        self.model = model
        
        // 이게 없으면 뷰에서 최신 데이터로 랜더링이 안됨
        modelChangedPublisher
            .receive(on: RunLoop.main)
            .sink(receiveValue: objectWillChange.send)
            .store(in: &cancellable)
    }
}
