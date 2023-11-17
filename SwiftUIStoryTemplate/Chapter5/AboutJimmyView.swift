//
//  AboutJimmyView.swift
//  SwiftUIStoryTemplate
//
//  Created by Anna Zvereva on 11/16/23.
//

import SwiftUI

struct AboutJimmyView: View {
    
    var name: String
    var picture: String
    var clr: Color
    
    @State private var isBackgroudOn:Bool = false
    @State private var BackgroundAboutJimmy: Color = Color.gray
    @State private var aboutMe = ""
    @State private var value = 0
    let step = 1
    let range = 1...50
    
    @State private var selectedAge: Age = .young
    enum Age: String, CaseIterable, Identifiable {
        case young, adult, senior
        var id: Self { self }
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                Image(picture)
                    .resizable()

                List {
                    Toggle("Background", isOn: $isBackgroudOn)
                        .tint(.blue)
                        .onChange(of: isBackgroudOn) { _, newValue in
                            if newValue {
                                BackgroundAboutJimmy = clr
                            } else {
                                BackgroundAboutJimmy = .gray
                            }
                        }
                    Picker("Age", selection: $selectedAge) {
                        Text("Young").tag(Age.young)
                        Text("Adult").tag(Age.adult)
                        Text("Senior").tag(Age.senior)
                    }
                    Stepper(value: $value,
                            in: range,
                            step: step) {
                        Text("Number of Friends: \(value) ")
                    }
                    TextField("About me", text: $aboutMe)
                    // .padding(10)
                    //   }
                    
                    //   BackgroundAboutJimmy
                    
                }
                .background(BackgroundAboutJimmy)
                .scrollContentBackground(.hidden)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("About \(name)")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
        }
    }
}

#Preview {
    AboutJimmyView(name: "Jimmy", picture: "Jimmy Swift", clr: .mint)
}
