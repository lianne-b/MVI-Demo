//
//  Models.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/08.
//

import Foundation

/**
 Model:
 DiaryView UI를 그릴 때 사용되는 데이터들이 저장된다
 */
struct Diary {
    let date: Date
    let title: String
    let body: String
}

// MARK: - Intent
/// 사용자가 취할 수 있는 액션
enum DiaryIntent {
    case createDiary(diary: Diary)
    case editDiary(diary: Diary)
    case deleteDiary
}

// MARK: - Mutation
//func reduce(state: inout AppState, intent: AppIntnet) {
//    switch intent {
//    case .updateTitle(let newTitle):
//        state.title = newTitle
//    }
//}


enum DiaryCRUDState {
    case state
}
