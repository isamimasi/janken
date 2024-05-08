//
//  ContentView.swift
//  janken
//
//  Created by F. ISAMI. on 2024/05/08.
//

import SwiftUI

struct ContentView: View {
    // jankenNumber を定義する。スタート０　ぐーは１　チョキは２　パーは３
    @State var jankenNumber = 0
    var body: some View {
        VStack {
            Spacer()
            //スタート画面
            if jankenNumber==0 {
                Text("これからジャンケンをします！")
                    .padding(.bottom)
            }
            // グーの場合
            else if jankenNumber==1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit();
                Spacer()
                Text("グー")
                .padding(.bottom);}
            // チョキの場合
            else if jankenNumber==2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit();
                Spacer()
                Text("チョキ")
                    .padding(.bottom);
            }
            // パーの場合
            else {
                Image(.pa)
                    .resizable()
                    .scaledToFit();
                Spacer()
                Text("パー")
                    .padding(.bottom);
            }
            // ボタンの定義　タップされたらアクション
            Button(action:{
                print ("tapped!")
                //　newJankenNumber　を定義する前回の手とダブらないようにしている
                var newJankenNumber = 0;
                // repeat while 構文
                // repeat (繰り返す)　while この条件の場合は繰り返す。
                // jankenNumber == newJankenNumberは繰り返す。
                repeat {
                    newJankenNumber = Int.random(in: 1...3);
                }
                while jankenNumber == newJankenNumber
                jankenNumber = newJankenNumber
            },label:{
                Text("じゃんけんをする")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .font (.title)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
        
    }
}

#Preview {
    ContentView()
}
