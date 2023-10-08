//
//  DiaryDetailView.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/08.
//

import SwiftUI

struct DiaryDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Today I fell from stairs.")
                .font(.title3)
                .fontWeight(.semibold)
            
            Text("2023-08-11")
                .font(.callout)
            
            Text("이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다. 이건 나의 일기. 오늘 넘어졌다.")
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button("✏️ 수정하기") {
                    // 수정 함수
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("🗑️ 삭제하기") {
                    // 삭제 함수
                }
                .buttonStyle(.borderedProminent)
               
                Spacer()
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct DiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryDetailView()
    }
}
