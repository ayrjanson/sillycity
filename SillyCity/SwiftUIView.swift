//
//  SwiftUIView.swift
//  SillyCity
//
//  Created by Anna Yrjanson on 4/16/22.
//

/*

import SwiftUI

struct ContentView: View {
    var body: some View {
       // 1
        VStack {
            DateView()
        }.padding()
    }
}

// 2
struct DateView: View {
    var body: some View {
      // Container to add background and corner radius to
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Friday, 10th January")
                        .font(.title)
                        .bold()
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }.padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

/*
 CARDVIEW: Different File
 */


struct CardView: View {
    var body: some View {
        // 1
        GeometryReader { geometry in
                        
            // 2
            VStack(alignment: .leading) {
                Image("person_1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.75) // 3
                    .clipped()
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Debra Weber, 28")
                            .font(.title)
                            .bold()
                        Text("Judge")
                            .font(.subheadline)
                            .bold()
                        Text("13 Mutual Friends")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer() // Add a spacer to push our HStack to the left and the spacer fill the empty space
                    
                    Image(systemName: "info.circle")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
            }
            // Add padding, corner radius and shadow with blur radius
            .padding(.bottom)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().frame(height: 400).padding()
    }
}
 
 */
