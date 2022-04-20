//
//  DeathScreen.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/10/22.
//

import SwiftUI

struct DeathScreen: View {
    @EnvironmentObject var appInfo: AppInformation
    var body: some View {
        NavigationView {
            ZStack{
                if appInfo.isDeathScreen {
                    Color("Eggplant")
                        .ignoresSafeArea()
                }
                VStack {
                    if appInfo.isDeathScreen {
                        let situation = deathImage(info: appInfo)
                        Spacer()
                        Image(situation.deathImage)
                            .resizable()
                            .scaledToFit()
                        Spacer()
                                
                        Text(situation.deathMessage)
                            .font(.system(size: 15, weight: .light, design: .serif))
                            .foregroundColor(Color("Eggshell"))
                            .multilineTextAlignment(.center)
                            .lineSpacing(1)
                            .frame(width:380, height: 100)
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation {
                                appInfo.isDeathScreen.toggle()
                                appInfo.myState.restart()
                            }
                        }) {
                            Text("Play Again")
                                .padding(.horizontal, 30)
                                .font(.system(size: 25, weight: .bold, design: .serif))
                                .padding()
                                .frame(width: 250, height: 50)
                                .background(Color("SteelTeal"))
                                .cornerRadius(10)
                                .foregroundColor(Color("Eggshell"))
                        }
                        
                        Button(action: {
                            withAnimation {
                                appInfo.isTitleViewShowing.toggle()
                                appInfo.myState.restart()
                            }
                        }) {
                            Text("Title Screen")
                                .padding(.horizontal, 30)
                                .font(.system(size: 25, weight: .bold, design: .serif))
                                .padding()
                                .frame(width: 250, height: 50)
                                .background(Color("Eggshell"))
                                .cornerRadius(10)
                                .foregroundColor(Color("SteelTeal"))
                        }
                    }
                }
            }
        }
    }
}

struct DeathScreen_Previews: PreviewProvider {
    static var previews: some View {
        DeathScreen()
    }
}

struct deathInfo {
    var deathImage: String
    var deathMessage: String
    init() {
        deathImage = ""
        deathMessage = ""
    }
}

func deathImage(info: AppInformation) -> deathInfo {
    if (info.myState.curMon <= 0) {
        var noMoney = deathInfo()
        noMoney.deathImage = "money0"
        noMoney.deathMessage = "Ran out of funds; audited for wire fraud, but you know what you did."
        return noMoney
    }
    else if (info.myState.curMon >= 100) {
        var muchMoney = deathInfo()
        muchMoney.deathImage = "money100"
        muchMoney.deathMessage = "Suspected of money laundering; audited by the state, but you know what you did."
        return muchMoney
    }
    else if (info.myState.curPow <= 0) {
        var noPower = deathInfo()
        noPower.deathImage = "power0"
        noPower.deathMessage = "Too accommodating to requests; unintentionally created a system that voted you out"
        return noPower
    }
    else if (info.myState.curPow >= 100) {
        var muchPower = deathInfo()
        muchPower.deathImage = "power100"
        muchPower.deathMessage = "Became too authoritative; forced removal by regional supervisor"
        return muchPower
    }
    else if (info.myState.curPop <= 0) {
        var noPop = deathInfo()
        noPop.deathImage = "pop0"
        noPop.deathMessage = "Hated by the residents; asked to resign or face social isolation"
        return noPop
    }
    else if (info.myState.curPop >= 100) {
        var muchPop = deathInfo()
        muchPop.deathImage = "pop100"
        muchPop.deathMessage = "Adored by residents; resigned due to overwhelming quantites of requests"
        return muchPop
    }
    else if (info.myState.curLand <= 0) {
        var noLand = deathInfo()
        noLand.deathImage = "land0"
        noLand.deathMessage = "Lack of upkeep annoyed residents; removed for incompetence"
        return noLand
    }
    else if (info.myState.curLand >= 100) {
        var muchLand = deathInfo()
        muchLand.deathImage = "land100"
        if (info.myState.curMon >= 50) {
            muchLand.deathMessage = "Questioned by neighbors about heavy devotion of funds to upkeep; removed by vote for neglecting other duties"
        }
        else {
            muchLand.deathMessage = "Questioned by IRS for having expensive landscaping services even with few funds; found guilty of wire fraud"
        }
        return muchLand
    }
    else {
        var error = deathInfo()
        error.deathImage = "hoahavoc2"
        error.deathMessage = "THIS IS AN ERROR, SKIPPED THROUGH ALL CONDITIONS"
        return error
    }
}
