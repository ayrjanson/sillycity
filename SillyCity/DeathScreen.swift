//
//  DeathScreen.swift
//  SillyCity
//
//  Created by Anna Yrjanson on 4/10/22.
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
                        Rectangle().padding(.top, -3.0).frame(width: 400.0, height: 150).foregroundColor(.red).opacity(0)
        
                        
                        Text("Title Screen")
                            .font(.system(size: 25, weight: .heavy, design: .rounded))
                            .padding()
                            .frame(width: 190, height: 50)
                            .background(Color("SteelTeal"))
                            .cornerRadius(10)
                            .foregroundColor(Color("Eggshell"))
                            .onTapGesture {
                                withAnimation {
                                    appInfo.isTitleViewShowing.toggle()
                                }
                            }
                        Text("PlayAgain")
                            .font(.system(size: 25, weight: .heavy, design: .rounded))
                            .padding()
                            .frame(width: 190, height: 50)
                            .background(Color("Eggshell"))
                            .cornerRadius(10)
                            .foregroundColor(Color("SteelTeal"))
                            .onTapGesture {
                                withAnimation {
                                    appInfo.isDeathScreen.toggle()
                                }
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
