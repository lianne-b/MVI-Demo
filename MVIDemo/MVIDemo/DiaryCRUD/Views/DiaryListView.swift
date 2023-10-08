//
//  DiaryListView.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/08.
//

import SwiftUI

struct DiaryListView: View {
    @State private var isCreatingDiary: Bool = false
    @State private var diaryTitle: String = ""
    @State private var diaryBody: String = ""
    
    let bgColors: [Color] = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple
    ]
    
    var body: some View {
        ScrollView {
            ForEach(1..<6) { index in
                DiaryListCell(
                    bgColor: bgColors[index % 6]
                )
                .padding(.vertical, 5)
                .padding(.horizontal, 20)
            }
        }
        .scrollIndicators(.never)
        .navigationTitle("My Diaries")
        .navigationBarItems(trailing: Button(
            action: {
                isCreatingDiary = true
            }, label: {
                Image(systemName: "plus")
            })
        )
        .sheet(isPresented: $isCreatingDiary) {
            // Diary CREATE View
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                
                Text("⭐️ 일기 쓰기 캠페인 ⭐️")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                TextField(
                    "",
                    text: $diaryTitle,
                    prompt: Text("일기 제목")
                )
                .textFieldStyle(.roundedBorder)
                
                TextEditor(text: $diaryBody)
                    .overlay {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(
                                    Color(UIColor.systemGray5),
                                    lineWidth: 0.8
                                )
                            
                            if diaryBody == "" {
                                Text("일기 내용")
                                    .foregroundColor(Color(UIColor.systemGray3))
                                    .padding(8)
                            }
                        }
                    }
                
                HStack {
                    Spacer()
                    
                    Button("일기 저장") {
                        // 저장 함수
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.horizontal, 20)
        }
    }
}

struct DiaryListView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListView()
    }
}
