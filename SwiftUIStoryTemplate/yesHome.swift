//
//  yesHome.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct yesHome: View {
    @State var isAnimating: Bool = true
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
                    
                    AnimatedImage(name: "talking.gif")
                        .frame(width: 100, height: 120)
                        .padding(30)
//                    Image("ruby house")
//                        .resizable()
//                        .frame(width: 170, height: 170)
    
                    Text("As soon as Jimmy was greeted in, he ran straight to \(friendTwoName)'s room and began talking bout his day.")
                        .frame(width:332)
                    Text("After his hour long podcast lf a story time, he then asked Sarah how her day was.")
                        .frame(width:325)
                    Text("She then states how she plans on going to \(collegeName) in order to prepare for the major changes coming.")
                        .frame(width:330)
                    Text("They talked for another hour or two before Jimmy decided to head out, leaving nothing but thought of improvement.")
                        .frame(width:330)
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
    yesHome()
}
