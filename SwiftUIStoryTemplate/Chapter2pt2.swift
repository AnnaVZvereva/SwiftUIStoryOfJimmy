//
//  Chapter2pt2.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/15/23.
//

import SwiftUI

struct Chapter2pt2: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("parkNew")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 5.0)
                    .frame(width: 450, height: 900)
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
                    ZStack{
//                        Rectangle()
//                            .frame(width: 240, height: 55)
//                            .foregroundColor(.white)
//                            .cornerRadius(8.0)
//                            .opacity(0.6)
                        Text("Which way should \(mainCharater) look?")
                            .font(.title3)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: 320)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.teal)
                            .italic()
                    }
                    ZStack{
                        Image("road")
                            .resizable()
                            .frame(width: 350, height: 250)
                        Image("4")
                            .resizable()
                            .frame(width: 400, height: 400)
                    }
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Left")) {
                                lookLeft()
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 60, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Right")) {
                                lookRight()
                            }
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 250, height: 50)
                            .foregroundColor(.white)
                            .cornerRadius(8.0)
                            .opacity(0.6)
                        NavigationLink(LocalizedStringKey("Nevermind,\n lets blow this popsicle stand!")) {
                                hydrationBreak()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Chapter2pt2()
}
