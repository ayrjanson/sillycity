//
//  ContentView.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State private var curCard = 0
    @State private var score = 0
    @State private var isShowing = false
    var body: some View {
    ZStack {
        ZStack{
            Color("Eggplant")
                .ignoresSafeArea()
            Spacer()
                .padding(.vertical, 20)
            
            VStack(spacing:20) {
                Spacer()
                HStack(spacing: 5) {
                    //Text(String(appInfo.myState.curCul))
                    Spacer()
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                    Image("card2")
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        //.padding(.horizontal, 5) //Original padding: 30
                        .frame(width: 90, height: 90, alignment: .center)
                        //.border(.red)
                    //Text(String(appInfo.myState.curMil))
                    Image("card3")
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        //.padding(.horizontal, 5) //Original padding: 30
                        .frame(width: 90, height: 90, alignment: .center)
                    //Text(String(appInfo.myState.curMon))
                    Image("card4")
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        //.padding(.horizontal, 5) //Original padding: 30
                        .frame(width: 90, height: 90, alignment: .center)
                    //Text(String(appInfo.myState.curPop))
                    Image("card5")
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        //.padding(.horizontal, 5) //Original padding: 30
                        .frame(width: 90, height: 90, alignment: .center)
                    Spacer()
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                }
                Text("This is a text box")
                Spacer()
                Image("card" + String(appInfo.myState.cardList[curCard].imgID))
                Spacer()
                
                HStack {
                    Button(action: {
                        appInfo.myState.curCul += appInfo.myState.cardList[curCard].posCul
                        appInfo.myState.curMil += appInfo.myState.cardList[curCard].posMil
                        appInfo.myState.curPop += appInfo.myState.cardList[curCard].posPop
                        appInfo.myState.curMon += appInfo.myState.cardList[curCard].posMon
                        
                        if(appInfo.myState.gameOver()) {
                            if(self.score > appInfo.highScore) {
                                appInfo.highScore = self.score
                            }
                            appInfo.timesDied += 1
                            self.score = 0
                            curCard = 0
                            sleep(1)
                            appInfo.isDeathScreen.toggle()
                            appInfo.myState.restart()
                        }
                        else {
                        self.score += 1
                        curCard += 1
                        }
                        
                    }) {
                        Text("yes")
                            .padding(.horizontal, 30)
                    }
                    Button(action: {
                        appInfo.myState.curCul += appInfo.myState.cardList[curCard].negCul
                        appInfo.myState.curMil += appInfo.myState.cardList[curCard].negMil
                        appInfo.myState.curPop += appInfo.myState.cardList[curCard].negPop
                        appInfo.myState.curMon += appInfo.myState.cardList[curCard].negMon
                        if(appInfo.myState.gameOver()) {
                            if(self.score > appInfo.highScore) {
                                appInfo.highScore += self.score
                            }
                            appInfo.timesDied += 1
                            self.score = 0
                            curCard = 0
                            sleep(1)
                            appInfo.isDeathScreen.toggle()
                            appInfo.myState.restart()
                        }
                        else {
                        self.score += 1
                        curCard += 1
                        
                        }
                        
                    }) {
                        Text("no")
                            .padding(.horizontal, 30)
                    }
                }
                Spacer()
                Text("Score: " + String(score))
                    .padding(.vertical, 100)
            }
            
        }
        if appInfo.isTitleViewShowing {
            TitleScreen()
        }
        if appInfo.isDeathScreen {
            DeathScreen()
        }
    }
    }

}

class AppInformation: ObservableObject{
    @Published var myState = GameState()

    @Published var highScore = 0
    @Published var timesDied = 0
    @Published var gameOver = false
    @Published var username = UserDefaults.standard.string(forKey: "username")
    @Published var gamesPlayed = UserDefaults.standard.integer(forKey: "gamesPlayed")
    @Published var isTitleViewShowing = true
    @Published var isDeathScreen = false
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
