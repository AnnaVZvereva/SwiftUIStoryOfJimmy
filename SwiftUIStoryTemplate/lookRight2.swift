

// lookRight2.swift
//  SwiftUIStoryTemplate

  //Created by Shaundra Hamilton on 11/16/23.

//
//  lookRight2.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI
struct lookRight2: View {
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
                VStack(spacing: 0){
                    Text ("Chapter Two(2):\n Friends, How Many Of Us Have Them?")
                        .foregroundColor(.black)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    ZStack {
                        Image("emptyPark")
                            .resizable()
                            .frame(width: 300, height: 200)
                            .padding()
                        
                        HStack (spacing: -300) {
                            Image("Tommy Python")
                                .resizable()
                                .frame(width: 150, height: 150)
                            Image("Jimmy swift")
                                .resizable()
                                .frame(width: 150, height: 150)
                        }
                    }
                    Text("This reply caught \(mainCharater) off guard. ''Why the want to change all of a sudden?'' he asked.")
                        .frame(width:325)
                    Text("Tommy then eplained how times are changing and it's time to get with them. ''There's no such thing as too much improvement")
                        .frame(width:325)
                    Text("Tommy's reasoning made Jimmy think. With that, he decided to go on his next adventure.")
                        .frame(width:325)
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 80, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Go Back")) {
                                Chapter2pt2()
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 90, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Leave")) {
                                hydrationBreak()
                            }
                        }
                    }
                }
            }
        }
    }
    }
#Preview {
    lookRight2()
}
