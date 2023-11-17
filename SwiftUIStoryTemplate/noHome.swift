//
//  noHome.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI

struct noHome: View {
    @State private var showingAlert = false
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
                VStack {
                    NavigationLink(LocalizedStringKey("Home")) {
                        ContentView()
                            .bold()
                    }
                    Text("Chapter Two(2):\n Friends, How Many Of Us Have Them?")
                        .foregroundColor(.black)
                        .padding()
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    Image("ruby house")
                        .resizable()
                        .frame(width: 170, height: 170)
                    
                    Text("\(friendTwoName)'s dad response was...")
                    
                    HStack {
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            Button ("Civil"){
                                showingAlert = true
                            }
                            .alert("Sorry, bud! Sarah's off to University.", isPresented: $showingAlert) {
                                Button("Good for her!", role: .cancel) { }
                            }
                                
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 70, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            Button ("Mean"){
                                showingAlert = true
                            }
                            .alert("Hate to tell ya, she doesn't want to talk to you.", isPresented: $showingAlert) {
                                Button("Oh...okay.", role: .cancel) { }
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 150, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            Button ("Just plain rude..."){
                                showingAlert = true
                            }
                            .alert("He slammed the door in Jimmy's face!", isPresented: $showingAlert) {
                                Button("Who burned his eggs?", role: .cancel) { }
                            }
                        }
                        }
                    
                    Text("Try another option?")
                        .frame(width:325)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.teal)
                        .italic()
                        .font(.title3)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 30)
                            .foregroundColor(.white)
                            .cornerRadius(8.0)
                            .opacity(0.6)
                        NavigationLink(LocalizedStringKey("Yes")) {
                            rubyHouse()
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 200, height: 30)
                            .foregroundColor(.white)
                            .cornerRadius(8.0)
                            .opacity(0.6)
                        NavigationLink(LocalizedStringKey("No, next chapter please.")) {
                            Chapter3View()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    noHome()
}
