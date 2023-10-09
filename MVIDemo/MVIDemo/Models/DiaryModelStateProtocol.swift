//
//  DiaryModelStateProtocol.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import Foundation

protocol DiaryModelStateProtocol {
    var date: Date { get }
    var title: String { get }
    var body: String { get }
}
