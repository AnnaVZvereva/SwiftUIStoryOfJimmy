//
//  TheEndView.swift
//  SwiftUIStoryTemplate
//
//  Created by Anna Zvereva on 11/16/23.
//

import SwiftUI

struct TheEndView: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.5)
                VStack {
                    Text("The end")
                        .font(.largeTitle)
                    
                    NavigationLink("Start again") {
                        Chapter1View()
                    }
                    .bold()
                    .font(.title)
                }
                
            }
        }
    }
}

#Preview {
    TheEndView()
}
