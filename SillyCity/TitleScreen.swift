//
//  TitleScreen.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/10/22.
//

import SwiftUI

struct TitleScreen: View {
    @EnvironmentObject var appInfo: AppInformation
    var body: some View {
        NavigationView {
            ZStack{
                if appInfo.isTitleViewShowing {
                    Color("Eggplant")
                        .ignoresSafeArea()
                }
                VStack {
                    if appInfo.isTitleViewShowing {
                        Image("hoahavoc2")
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        Spacer()
                        Spacer()
                        
                        Button(action: {
                            withAnimation {
                                UserDefaults.standard.set(UIDevice.current.name, forKey: "username")
                                appInfo.isTitleViewShowing.toggle()
                                if(appInfo.isDeathScreen){
                                appInfo.isDeathScreen.toggle()
                                }
                            }
                        }) {
                            Text("Start!")
                                .font(.system(size: 25, weight: .semibold, design: .serif))
                                .padding()
                                .frame(width: 250, height: 50)
                                .background(Color("Eggshell"))
                                .cornerRadius(10)
                                .foregroundColor(Color("SteelTeal"))
                        }
                        
                        NavigationLink( destination: ProfileView(),
                            label: {
                                HStack {
                                    Image(systemName: "person")
                                        .frame(width: 25, height: 25)
                                    Text("Profile")
                                    //.font(.system(size: 25, weight: .heavy))
                                        .font(.system(size: 25, weight: .semibold, design: .serif))
                                }
                                .frame(width: 230, height: 20)
                                .foregroundColor(Color("Eggshell"))
                                .padding()
                                .background(Color("SteelTeal"))
                                .cornerRadius(10)
                            })
                        Spacer()
                    }
                }
            }
        }
    }
}

struct TitleScreen_Previews: PreviewProvider {
    static var previews: some View {
        TitleScreen()
    }
}
