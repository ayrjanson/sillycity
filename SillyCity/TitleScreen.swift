//
//  TitleScreen.swift
//  SillyCity
//
//  Created by Anna Yrjanson on 4/10/22.
//

import SwiftUI

//let fogra = Color(red: 3, green: 25, blue: 38)
//let eggshell = Color(red: 244, green: 241, blue: 222)
//let deepTaupe = Color(red: 137, green: 106, blue: 103)
//let eggplant = Color(red: 107, green: 77, blue: 87)
//let steelTeal = Color(red: 80, green: 132, blue: 132)

struct TitleScreen: View {
    @EnvironmentObject var appInfo: AppInformation
    var body: some View {
        NavigationView {
            ZStack{
                if appInfo.isTitleViewShowing {
                    //Image("Background")
                        //.resizable()
                        //.aspectRatio(contentMode: .fill)
                        //.ignoresSafeArea()
                    Color("Eggplant")
                        .ignoresSafeArea()
                }
                VStack {
                    if appInfo.isTitleViewShowing {
                        Image("hoahavoc2")
                            //.padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                            .resizable()
                            .scaledToFit()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        /*
                        Rectangle()
                            .padding(.top, -3.0)
                            .frame(width: 400.0, height: 150)
                            .opacity(0)
                         */
                        Spacer()
                        Spacer()
                        Text("Start!")
                            //.font(.system(size: 25, weight: .heavy, design: .rounded))
                            .font(.system(size: 25, weight: .light, design: .serif))
                            .padding()
                            .frame(width: 190, height: 50)
                            .background(Color("Eggshell"))
                            .cornerRadius(10)
                            .foregroundColor(Color("SteelTeal"))
                            .onTapGesture {
                                withAnimation {
                                    appInfo.isTitleViewShowing.toggle()
                                    if(appInfo.isDeathScreen){
                                    appInfo.isDeathScreen.toggle()
                                    }
                                }
                            }
                        
                        
                        
                        NavigationLink( destination: ProfileView(),
                            label: {
                                HStack {
                                    Image(systemName: "person")
                                        .frame(width: 25, height: 25)
                                    Text("Profile")
                                    //.font(.system(size: 25, weight: .heavy))
                                        .font(.system(size: 25, weight: .light, design: .serif))
                                }
                                .frame(width: 160, height: 20)
                                .foregroundColor(Color("Eggshell"))
                                .padding()
                                .background(Color("SteelTeal"))
                                .cornerRadius(10)
                                //.navigationBarTitle("<< Back")
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
