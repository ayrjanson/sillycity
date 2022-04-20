//
//  ProfileView.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var appInfo: AppInformation
        
        var body: some View {
            ZStack {
                
                // Background Color
                Color("SteelTeal")
                    .ignoresSafeArea()
                
                VStack {
                    // Profile Label
                    Text("Player Profile")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.bottom, 30.0)
                        .padding(.top, -180)
                    
                    // Profile Picture
                    Image(String(UserDefaults.standard.string(forKey: "selectedIcon") ?? "DefaultProfilePic"))
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 5)
                        .padding(.top, -130)
                    
                    // Username
                    Text(String(UserDefaults.standard.string(forKey: "username") ?? "User1234"))
                        .font(.system(size: 24, weight: .semibold))
                        .padding(.bottom, 15.0)
                        .padding(.top, -60)
                        .foregroundColor(.white)
                    
                    ZStack {
                        // Background for the "General Stats" label
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 400, height: 40)
                        
                        // Stats Label
                        Text("General Stats")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    
                    // Games played and Highest Level label
                    HStack {
                        Spacer()
                        
                        Text("Games Played")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.bottom, 5.0)
                        
                        Spacer()
                        
                        Text("Highest Level")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.bottom, 5.0)
                        
                        Spacer()
                    }
                    
                    // Number of games played and highest Level label
                    HStack {
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 100, height: 30)
                                .cornerRadius(10)
                            
                            Text(String(UserDefaults.standard.integer(forKey: "gamesPlayed")))
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                                
                        }
                        
                        Spacer()
                    
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 100, height: 30)
                                .cornerRadius(10)
                                .padding(.trailing, 190.0)
                            
                            Text(String(UserDefaults.standard.integer(forKey: "highScore")))
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                        
                        }
                        
                        Spacer()
                    }
                }
            }
        }
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
