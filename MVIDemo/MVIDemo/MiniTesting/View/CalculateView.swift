//
//  CalculateView.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import SwiftUI

extension CalculateView {
    static func build() -> some View {
        let model = CalculateModel()
        let intent = CalculateIntent()
        let container = MVIContainer(
            intent: intent as CalculateIntentProtocol,
            model: model as CalculateModelStateProtocol
        )
        let view = CalculateView(container: container)
        
        return view
    }
}

struct CalculateView: View {
    @StateObject var container:
    MVIContainer<CalculateIntentProtocol, CalculateModelStateProtocol>
    
    private var state: CalculateModelStateProtocol { container.model }
    private var intent: CalculateIntentProtocol { container.intent }

    @State var firstNum: String = ""
    @State var secondNum: String = ""
    
    var body: some View {
        VStack {
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
            
            Button("➕") {
                intent.buttonPressed()
            }
            .buttonStyle(.borderedProminent)
            
            
            Text("\(state.result)")
                .font(.title2)
        }
    }
}


//struct CalculateView_Previews: PreviewProvider {
//    static var previews: some View {
//        CalculateView(container: MVIContainer<CalculateIntentProtocol, CalculateModelStateProtocol>)
//    }
//}
