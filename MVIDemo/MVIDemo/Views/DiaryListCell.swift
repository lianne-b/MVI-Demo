//
//  DiaryListCell.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/08.
//

import SwiftUI

struct DiaryListCell: View {
    var bgColor: Color
    
    var body: some View {
        NavigationLink {
            DiaryDetailView()
        } label: {
            VStack(alignment: .leading, spacing: 10) {
                Text("Today I fell from stairs.")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("2023-08-11")
                    .font(.callout)
            }
            .padding(.vertical, 30)
            .frame(maxWidth: .infinity)
            .background(bgColor)
            .cornerRadius(17)
            .foregroundColor(.black)
        }
    }
}

struct DiaryListCell_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListCell(bgColor: Color.blue)
    }
}
