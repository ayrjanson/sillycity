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
                    //Text(String(appInfo.myState.curCul))
                    Spacer()
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                    Image("power" + String(appInfo.myState.curPow))
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        //.padding(.horizontal, 5) //Original padding: 30
                        .frame(width: 90, height: 90, alignment: .center)
                        //.border(.red)
                    //Text(String(appInfo.myState.curMil))
                    Image("land" + String(appInfo.myState.curLand)) //Replace with Land
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    //Text(String(appInfo.myState.curMon))
                    Image("pop" + String(appInfo.myState.curPop)) // Replace with Popularity
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    //Text(String(appInfo.myState.curPop))
                    Image("money" + String(appInfo.myState.curMon)) // Replace with Money
                        .resizable(capInsets: EdgeInsets(),resizingMode: .stretch)
                        .frame(width: 90, height: 90, alignment: .center)
                    Spacer()
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                }
                
                /*
                HStack(spacing: 5) {
                    Text(String(appInfo.myState.curPow))
                    Text(String(appInfo.myState.curPop))
                    Text(String(appInfo.myState.curPop))
                    Text(String(appInfo.myState.curMon))
                }
                */
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("DeepTaupe"))
                        //.frame(width: 100, height: 30)
                        //.cornerRadius(10)
                        //.padding(.trailing, 190.0)
                    ScrollView(.vertical) {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at efficitur ex. Ut id fringilla augue. Donec sit amet auctor nulla. Integer aliquet nisi ipsum, ut sagittis quam scelerisque ")
                            .font(.system(size: 25, weight: .light, design: .serif))
                            .foregroundColor(Color("Eggshell"))
                            .multilineTextAlignment(.center)
                            .lineSpacing(1)
                            .frame(width:380)
                    }
                }
                Spacer()
                Spacer()
                
                // THIS IS THE ACTUAL PICTURE
                
                Image("hoahavoc2")
                    .resizable()
                    .scaledToFit()
                    .offset(x: dragOffset.width, y: dragOffset.height)
                    .animation(.easeInOut, value: dragOffset)
                    .gesture(
                        DragGesture()
                            .updating($dragOffset, body: { (value, state, transaction) in
                                state = value.translation
                            }))
                
                    //.position(imageLocation)
                    //.gesture(DragGesture().onChanged({value in
                    //}))
                Spacer()
                
                HStack {
                    Button(action: {
                        appInfo.myState.curLand += appInfo.myState.cardList[curCard].posLand
                        appInfo.myState.curPow += appInfo.myState.cardList[curCard].posPow
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
                        Text("Yes")
                            .padding(.horizontal, 30)
                            .font(.system(size: 25, weight: .bold, design: .serif))
                            .padding()
                            .frame(width: 190, height: 50)
                            .background(Color("Eggshell"))
                            .cornerRadius(10)
                            .foregroundColor(Color("SteelTeal"))
                    }
                    
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
                            appInfo.myState.restart()
                        }
                        else {
                        self.score += 1
                        curCard += 1
                        
                        }
                        
                    }) {
                        Text("No")
                            .padding(.horizontal, 30)
                            .font(.system(size: 25, weight: .bold, design: .serif))
                            .padding()
                            .frame(width: 190, height: 50)
                            .background(Color("Eggshell"))
                            .cornerRadius(10)
                            .foregroundColor(Color("SteelTeal"))
                    }
                }
                Spacer()
                Text("Score: " + String(score))
                    .padding(.vertical, 100)
                    .font(.system(size: 25, weight: .bold, design: .serif))
                    .padding()
                    .frame(width: 190, height: 50)
                    .background(Color("Eggshell"))
                    .cornerRadius(10)
                    .foregroundColor(Color("SteelTeal"))
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
