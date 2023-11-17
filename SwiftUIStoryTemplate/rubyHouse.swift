//
//  rubyHouse.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI

struct rubyHouse: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("neighborhood2")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 5.0)
                    .frame(width: 750, height: 900)
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .frame(width: 350, height: 730)
                    .cornerRadius(30)
                    .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("Chapter Two(2):\n Friends, How Many Of Us Have Them?")
                        .foregroundColor(.black)
                        .padding()
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    Image("ruby house")
                        .resizable()
                        .frame(width: 170, height: 170)
                    Text("He was so excited to see her, it's been so long and he'd love to know what she's been up to.")
                        .frame(width:325)
                    Text("Instead of \(friendTwoName) answering the door, it was her dad")
                        .frame(width:325)
                    Text("\(mainCharater) asked if \(friendName[1]) was home as he would like to catch up and maybe talk to her about his run in with \(friendName[0])")
                        .frame(width:330)
                    Text("Is Sarah home?")
                        .frame(width:325)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.teal)
                        .italic()
                        .font(.title3)
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 60, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Yes")) {
                                yesHome()
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 60, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("No")) {
                                noHome()
                            }
                        }
                    }
                }
            }
        }
    }
            }
#Preview {
    rubyHouse()
}
