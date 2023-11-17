//
//  lookRight.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI

struct lookRight: View {
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
                    ZStack{
                    Image("emptyPark")
                        .resizable()
                        .frame(width: 300, height: 200)
                        
                        HStack (spacing: -300) {
                            Image("Tommy Python")
                                .resizable()
                                .frame(width: 150, height: 150)
                            Image("Jimmy Swift")
                                .resizable()
                                .frame(width: 150, height: 150)
                        }
                        }
                    Text("\(mainCharater) rushed to his friend, \(friendOneName), who looked as though he was in a hurry")
                        .frame(width:325)
                    Text("When he finally catches up, he asked \(friendName[0]) where he was off to in such a rush.")
                        .frame(width:330)
                    Text("\(friendName[0]) said that he was tired of his limmited capabilities. He wanted to gain new skills and notoriety, and the only place to do that is \(collegeName).")
                        .frame(width:325)
                    
                        ZStack{
                            Rectangle()
                                .frame(width: 90, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Next Page")) {
                                lookRight2()
                                    
                            }
                    }
                        }
                    }
                }
            }
        }

#Preview {
    lookRight()
}
