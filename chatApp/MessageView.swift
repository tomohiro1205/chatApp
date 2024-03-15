//
//  MessageView.swift
//  chatApp
//
//  Created by 木村朋広 on 2024/03/08.
//

import SwiftUI

struct MessageView: View {
    let name: String

    private var messageVM = MessageViewModel()
    @State private var typeMessage = ""

    init(name: String) {
        self.name = name
    }

    var body: some View {
        NavigationStack{
            NavigationLink (destination: ProfileView(name: name)) {
Text("profile")
            }
            VStack {
                List(messageVM.messages, id: \.id) {message in
                    if message.name == name {
                        MessageRow(message: message.message, isMyMessage: true, user:message.name, date: message.createAt)
                    } else {
                        MessageRow(message: message.message, isMyMessage: false, user:message.name, date: message.createAt)
                    }
                }
                .navigationBarTitle("Chats", displayMode: .inline)
                HStack {
                    TextField("Message", text: $typeMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button {
                        messageVM.addMessage(message: typeMessage, name: name)
                        typeMessage = ""
                    } label: {
                        Image(systemName: "arrow.up.circle.fill")
                    }
                }
                .padding()
            } //VStack
        } //NavigationStack
    } //body
} //MessageView
