//
//  ContentView.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

import SwiftUI

// Main view of the game in progress, TitleScreen and DeathScreen are displayed on top
struct ContentView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State private var curCard = 0
    @State private var score = 0
    @State private var isShowing = false
    @GestureState private var dragOffset = CGSize.zero
    var body: some View {
        ZStack {
    ZStack {
        ZStack{
            Color("Eggplant")
                .ignoresSafeArea()
            Spacer()
                .padding(.vertical, 20)
            
            VStack(spacing:20) {
                Spacer()
                HStack(spacing: 5) {
                    Spacer()
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                    Image("power" + checkStatus(i :appInfo.myState.curPow)) //Power
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    Image("land" + checkStatus(i :appInfo.myState.curLand)) //Land
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    Image("pop" + checkStatus(i :appInfo.myState.curPop)) //Popularity
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    Image("money" + checkStatus(i :appInfo.myState.curMon)) //Money
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    Spacer()
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("DeepTaupe"))
                        .frame(width: 380)
                        .cornerRadius(10)
                        
                    ScrollView(.vertical) {
                        Text(appInfo.myState.cardList[curCard].text)
                            .font(.system(size: 25, weight: .light, design: .serif))
                            .foregroundColor(Color("Eggshell"))
                            .multilineTextAlignment(.center)
                            .lineSpacing(1)
                            .frame(width:380)
                    }
                }
                Spacer()
                Spacer()
                
                Image("resident" + String(appInfo.myState.cardList[curCard].imgID % 4))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .offset(x: dragOffset.width, y: dragOffset.height)
                    .animation(.easeInOut, value: dragOffset)
                    .gesture(
                        DragGesture()
                            .updating($dragOffset, body: { (value, state, transaction) in
                                state = value.translation
                            }))
                Spacer()
                
                HStack {
                    Button(action: {
                        appInfo.myState.curLand += appInfo.myState.cardList[curCard].negLand
                        appInfo.myState.curPow += appInfo.myState.cardList[curCard].negPow
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
                        }
                        else {
                            if(curCard >= appInfo.myState.cardList.count) {
                                curCard = 0;
                                self.appInfo.myState.cardList.shuffle();
                            }
                        self.score += 1
                        curCard += 1
                        
                        }
                        
                    }) {
                        Text("No")
                            .padding(.horizontal, 30)
                            .font(.system(size: 25, weight: .bold, design: .serif))
                            .padding()
                            .frame(width: 185, height: 50)
                            .background(Color("Eggshell"))
                            .cornerRadius(10)
                            .foregroundColor(Color("SteelTeal"))
                    }
                    
                    Button(action: {
                        appInfo.myState.curLand += appInfo.myState.cardList[curCard].posLand
                        appInfo.myState.curPow += appInfo.myState.cardList[curCard].posPow
                        appInfo.myState.curPop += appInfo.myState.cardList[curCard].posPop
                        appInfo.myState.curMon += appInfo.myState.cardList[curCard].posMon
                        
                        if(appInfo.myState.gameOver()) {
                            if(self.score > appInfo.highScore) {
                                UserDefaults.standard.set(self.score, forKey: "highScore")
                            }
                            let newTimesDied = UserDefaults.standard.integer(forKey: "gamesPlayed") + 1
                            UserDefaults.standard.set(newTimesDied,forKey: "gamesPlayed")
                            self.score = 0
                            curCard = 0
                            //sleep(1)
                            appInfo.isDeathScreen.toggle()
                        }
                        else {
                            if(curCard >= appInfo.myState.cardList.count) {
                                curCard = 0;
                                appInfo.myState.cardList.shuffle();
                            }
                        self.score += 1
                        curCard += 1
                        }
                        
                    }) {
                        Text("Yes")
                            .padding(.horizontal, 30)
                            .font(.system(size: 25, weight: .bold, design: .serif))
                            .padding()
                            .frame(width: 185, height: 50)
                            .background(Color("SteelTeal"))
                            .cornerRadius(10)
                            .foregroundColor(Color("Eggshell"))
                    }
                    
                }
                Spacer()
                Text("Decisions: " + String(score))
                    .padding(.vertical, 100)
                    .font(.system(size: 25, weight: .semibold, design: .serif))
                    .padding(.vertical, 20)
                    .frame(width: 380, height: 50)
                    .background(Color("Fogra"))
                    .cornerRadius(10)
                    .foregroundColor(Color("Eggshell"))
            }
            
        }
        if appInfo.isDeathScreen {
            DeathScreen()
        }
    }
        if appInfo.isTitleViewShowing {
            TitleScreen()
        }
    }
    }

}

// Function to display the correct status image for the statuses of the player
func checkStatus(i : Int) -> String {
    let quotient = Double(i / 10)
    
    if (quotient <= 0.0) {
        return "0"
    }
    else if (0.0 < quotient && quotient < 1) {
        return "10"
    }
    
    else if (quotient >= 10.0) {
        return "100"
    }
    
    let toString = String(Int(floor(quotient)) * 10)
    return toString
}



class AppInformation: ObservableObject{
    @Published var myState = GameState()

    @Published var highScore = UserDefaults.standard.integer(forKey: "highScore")
    @Published var timesDied = UserDefaults.standard.integer(forKey: "gamesPlayed")
    @Published var gameOver = false
    @Published var username = UserDefaults.standard.string(forKey: "username")
    @Published var isTitleViewShowing = true
    @Published var isDeathScreen = false
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
