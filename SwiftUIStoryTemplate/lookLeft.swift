

 // lookLeft.swift
 // SwiftUIStoryTemplate

 // Created by Shaundra Hamilton on 11/16/23.


//
//  lookLeft.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//


import SwiftUI

struct lookLeft: View {
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
                  Text ("Chapter Two(2): Friends, How Many Of Us Have Them?")
                        .foregroundColor(.black)
                        .padding()
                        .font(.headline)
                        .multilineTextAlignment(.center)
                       Image("emptyPark")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .padding()
                    Text("He looked to his left and saw no one there.")
                        .frame(width: 325)
                    Text("What should he do now?")
                        .frame(width:325)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.teal)
                        .italic()
                        .font(.title3)
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 90, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Look right")) {
                                lookRight()
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 60, height: 30)
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
    lookLeft()
}
