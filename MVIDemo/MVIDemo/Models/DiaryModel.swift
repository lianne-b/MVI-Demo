//
//  Models.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/08.
//

import Foundation

final class DiaryModel:
    ObservableObject,
    DiaryModelStateProtocol,
    DiaryModelActionProtocol
{
    @Published var title: String = ""
    @Published var body: String = ""
    
    var date: Date = Date()
    
    func editTitle(title: String) {
        self.title = title
    }
    
    func editBody(body: String) {
        
    }
}
