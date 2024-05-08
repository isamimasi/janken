//
//  ContentView.swift
//  janken
//
//  Created by F. ISAMI. on 2024/05/08.
//

import SwiftUI

struct ContentView: View {
    @State var jankenNumber = 0
    var body: some View {
        VStack {
            Spacer()
            if jankenNumber==0 {
                Text("これからジャンケンをします！")
                    .padding(.bottom)
            }
            else if jankenNumber==1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit();
                Spacer()
                Text("グー")
                .padding(.bottom);}
            else if jankenNumber==2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit();
                Spacer()
                Text("チョキ")
                    .padding(.bottom);
            }
            else {
                Image(.pa)
                    .resizable()
                    .scaledToFit();
                Spacer()
                Text("パー")
                    .padding(.bottom);
            }
            Button(action:{
                print ("tapped!")
                var newJankenNumber = 0;
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
