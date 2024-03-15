//
//  ProfileView.swift
//  chatApp
//
//  Created by 木村朋広 on 2024/03/14.
//

//
//  ProfileView.swift
//  ConnectHands
//
//  Created by 木村朋広 on 2024/02/29.
//

import SwiftUI

struct ProfileView: View {
    @State var RegisteredName = ""
    @State var schoolText: String = ""
    @State var isShowDialog = false
    @State var selectedDate: Date = Date()
    @State var isShowAlert = false
       let name: String

    init(name: String) {
        self.name = name
    }

    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack{
                        Text("登録名")
                            .padding()
                        TextField("登録名を入力", text: $RegisteredName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 150)
                            .padding()
                    }  //VStackここまで
                    Image("noImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:150)
                        .padding()
                }// HStackここまで
                Text("Email")


                .padding()
                HStack{
                    Text("子供の名前:")
                    Text(name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 150)
                        .padding()
                } //HStack ここまで


                HStack{
                    Text("性別:")
                    Button {
                        isShowDialog = true
                    }label: {
                        Text("性別を選んで下さい")
                    } //Buttonここまで
                    .confirmationDialog("性別", isPresented: $isShowDialog, titleVisibility: .visible) {
                        Button("男"){
                        }
                        Button("女"){
                        }
                    } message: {
                        Text("性別を選んでください")
                    }
                    .padding()
                } //HStackここまで
                    DatePicker("誕生日", selection: $selectedDate, displayedComponents: [.date])
                        .environment(\.locale, Locale(identifier: "ja_jp"))
                Text("通学予定小学校")
                TextField("登録名を入力", text: $schoolText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250)
                    .padding()
                Button {
                    isShowAlert = true
                } label: {
                    Text("登録しますか？")
                }
                .alert("プロフィール登録", isPresented: $isShowAlert) {
                    Button("いいえ") {
                    }
                    Button("はい") {
                    }
                } message: {
                    Text("登録しますか？")
                }
            } //VStackここまで
        }//ZStackここまで


    }//bodyここまで
    // Firestoreからemailを取得する関数

}// ContentViewここまで

#Preview {
    ProfileView(name: "")
}
