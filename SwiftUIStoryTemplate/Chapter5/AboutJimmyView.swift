//
//  AboutJimmyView.swift
//  SwiftUIStoryTemplate
//
//  Created by Anna Zvereva on 11/16/23.
//

import SwiftUI



struct AboutJimmyView: View {
    
    @State private var isBackgroudOn:Bool = false
  
    var body: some View {
        
        Toggle("Background", isOn: $isBackgroudOn)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AboutJimmyView()
}
