//
//  SideMenu.swift
//  SillyCity
//
//  Created by Anna Yrjanson on 4/12/22.
//

import SwiftUI
import Foundation

struct SideMenuView: View {
    
    // Varibles
    @Binding var isShowing: Bool  // For if sideMenuView is showing
    @EnvironmentObject var appInfo: AppInformation // So you can access the global variables
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                // Sets the background to a black to gray gradient
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                VStack {
                    // X button with profile picture and username
                    
                    // Profile Button
                    NavigationLink( destination: ProfileView(),
                        label:  {
                        }).navigationBarTitle("<< Back")
                    
                    // Profile Button
                    NavigationLink( destination: RulesView(),
                        label: {
                            SideMenuOptionView(label: "person.fill.questionmark", labelName: "Rules")
                        }).navigationBarTitle("<< Back")
                    
                    // Home Button
                    SideMenuOptionView(label: "house", labelName: "Home").onTapGesture {
                        isShowing.toggle()
                        withAnimation {
                            appInfo.isTitleViewShowing.toggle()
                        }
                    }
                    Spacer()
                }
            }.navigationBarHidden(true)
        }
    }
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

