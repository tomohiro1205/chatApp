//
//  MessageRow.swift
//  chatApp
//
//  Created by 木村朋広 on 2024/03/08.
//

import SwiftUI

struct MessageRow: View {
    let message: String
    let isMyMessage: Bool
    let user: String
    let date: Date

    var formattedDate: String{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
    var body: some View {
        HStack {
            if isMyMessage {
                Spacer()

                VStack {
                    Text(message)
                        .padding(8)
                        .background(Color.red)
                        .cornerRadius(6)
                        .foregroundColor(Color.white)
                    Text(formattedDate)
                        .font(.callout)
                }
            } else {
                VStack(alignment: .leading) {
                    Text(message)
                        .padding(8)
                        .background(Color.green)
                        .cornerRadius(6)
                        .foregroundColor(Color.white)

                    HStack {
                        Text(user)

                        Text(formattedDate)
                            .font(.callout)
                    }
                }

                Spacer()
            }
        }
    }
}
