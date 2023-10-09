//
//  DiaryModelActionProtocol.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/09.
//

import Foundation

protocol DiaryModelActionProtocol: AnyObject {
    func editTitle(title: String)
    func editBody(body: String)
}
