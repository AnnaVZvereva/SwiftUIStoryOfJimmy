//
//  hydrationBreak.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI
import UIKit
import SDWebImageSwiftUI


struct hydrationBreak: View {
    @State var isAnimating: Bool = true
    
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
                    Text("Chapter Two(2): Friends, How Many Of Us Have Them?")
                        .foregroundColor(.black)
                        .padding(20)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    AnimatedImage(name: "lemonade3.gif")
                        .frame(width: 100, height: 120)
                        .padding(30)
                    Text("Running out of things to do, he remembers he hasn't talked to his friend in a while and set off to \(friendName[1])'s house")
                        .frame(width: 320)
                    Text("But first he had to get something to drink. He was parched from swinging and having so much fun at the park.")
                        .frame(width:320)
                    Text("\(mainCharater) stopped at the corner store and grabbed is favorite drink, lemonade, specifically the peach flavored.")
                        .frame(width:320)
                    sliderView()
                        .frame(width: 300)
                    ZStack{
                        Rectangle()
                            .frame(width: 130, height: 30)
                            .foregroundColor(.white)
                            .cornerRadius(8.0)
                            .opacity(0.6)
                        NavigationLink(LocalizedStringKey("Travel Onward!")) {
                            rubyHouse()
                        }
                    }
                }
            }
        }

      
    }
}

#Preview {
    hydrationBreak()
}
