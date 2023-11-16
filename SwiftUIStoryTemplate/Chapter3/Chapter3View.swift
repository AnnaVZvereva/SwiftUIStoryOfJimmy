//
//v2c3SwiftUIView.swift
//SwiftUIStoryTemplate
//
//Created by Dean Hildreth II on 11/16/23.


import SwiftUI

struct Chapter3View: View {
    @State private var buttonTapped = false
    @State private var buttonTapped2 = false
  var body: some View {
      ZStack {
      Button("Welcome to Chapter 3") {
          self.buttonTapped = true
      }
      if buttonTapped == true {
    
              
              VStack{
                  Image("Background")
                      .resizable()
                      .scaledToFill()
                      .opacity(0.7)
                      .ignoresSafeArea(.all)
                  
              }
         
          
          VStack{
                  
//                  Button(action: {
//                      self.buttonTapped2 = true
//                      
//                  }, label: {
//                      
//                      ZStack {
//                          RoundedRectangle(cornerRadius: 100)
//                              .frame(maxWidth: 150,maxHeight: 50)
//                              .shadow(radius: 110)
//                              .foregroundColor(.accentColor)
//                          
//                          
//                          Text(" Chapter 4?")
//                              .bold()
//                              .foregroundColor(.white)
//                              .font(.title2)
//                      }
//                  })

//              if buttonTapped2 == true{
//                  Chapter4View()
//              }
              
              Spacer()
             
              ZStack {
                  
                  RoundedRectangle(cornerRadius: 10)
                      .foregroundColor(.black)
                      .opacity(0.5)
                  //scrollview or bigger framespace
                  Text("Because of that, Jimmy was sad. He called  his cousin Jack to meet with him too, but had no response  Jimmy tried to remember his buddy Steve’s address to go over there for a minute and see if he had time to hang out together. The plan failed. “Jesus Christ!!!” Why am I so unlucky? “ - he thought.  “Everybody is busy. …What are they doing?  Oh my God! They are doing something , something special. What about myself? I need to think about my future now.” But at that time he did not have any idea and decided to talk with his father “Objective C”,  who advised him to discuss his future with his grandfather C first. It was great as his grandfather was the right person to talk too.  Actually it was Jimmy’s granddad who convinced him that he could become what he wanted!")
                      .foregroundColor(.white)
                      .bold()
                      .frame(maxWidth:300, alignment: .center)
              }
              Spacer()
              
              HStack {
                  
                  Image ("Jimmy Swift")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame (width: 90)
                  
                  
                  
                  Image ("Sara Ruby")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame (width: 90)
                  
                  Image ("Tommy Python")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame (width: 90)
              }
          }
      }
      }
                }
      }
#Preview {
  Chapter3View()
}

