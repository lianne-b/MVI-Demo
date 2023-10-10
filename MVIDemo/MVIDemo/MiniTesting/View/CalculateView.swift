//
//  CalculateView.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import SwiftUI

struct CalculateView: View {
    @StateObject var container:
    MVIContainer<CalculateIntent, CalculateModelStateProtocol>
    
    private var state: CalculateModelStateProtocol { container.model }
    private var intent: CalculateIntentProtocol { container.intent }
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            HStack {
                TextField(
                    "",
                    text: self.$container.model.firstNum,
                    prompt: Text("첫 번째 수")
                )
                .textFieldStyle(.roundedBorder)
                
                TextField(
                    "",
                    text: self.$container.model.secondNum,
                    prompt: Text("두 번째 수")
                )
                .textFieldStyle(.roundedBorder)
            }
            
            Button("🪄 Random Operation") {
                self.intent.buttonPressed()
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            HStack {
                Text("Result: ")
                Spacer()
                Text("\(state.result)")
                    .font(.largeTitle)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .navigationTitle("Guess the Operation!")
    }
}

extension CalculateView {
    static func build() -> some View {
        let model = CalculateModel()
        let intent = CalculateIntent(model: model)
        let container = MVIContainer(
            intent: intent,
            model: model as CalculateModelStateProtocol,
            modelChangedPublisher: model.objectWillChange
        )
        
        let view = CalculateView(container: container)
        
        return view
    }
}

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView.build()
    }
}
