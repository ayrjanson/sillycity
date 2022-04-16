
import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var appInfo: AppInformation
        
        var body: some View {
            ZStack {
                
                // Background Color
                Color("Eggplant")
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
                        Spacer()
                        
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
                        
                        
                        Spacer()
                    }
                    
                    
                    // Number of badges and icons collected
                    HStack {
                        Spacer()
                        
                        
                        Spacer()
                        
                        Spacer()
                    }
                    
                    // Coin Label and number of total coins collected
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 100, height: 30)
                            .cornerRadius(10)
                            .padding(.trailing, 190.0)
                        
                    }
                      
                }
                
//                ZStack {
//                    Image("BadgeCase")
//                        .resizable()
//                        .frame(width: 300, height: 160)
//                        .padding(.top, 480)
//                    let badges = UserDefaults.standard.array(forKey: "displayBadge") as? [Bool] ?? [Bool]()
//                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: -185), count: 4), spacing: 40) {
//                        ForEach(0..<8, id: \.self) {index in
//                            ZStack {
//                                Image(appInfo.badge[index])
//                                    .resizable()
//                                    .frame(width: 35, height: 35)
//                                    .cornerRadius(10)
//                                // If you don't have the badge it will draw a gray rectangle
//                                // Over it so you can't see the badge
//                                 if !badges[index] {
//                                    Rectangle()
//                                        .frame(width: 35, height: 35)
//                                        .foregroundColor(.darkGray)
//                                }
//                            }
//                        }
//                    }.padding(.top, 465)
//                }
                
                
                
            }
        }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
