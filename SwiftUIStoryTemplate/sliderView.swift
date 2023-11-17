//
//  sliderView.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI

struct sliderView: View {
    
    @State var value: CGFloat = 10
    let min: CGFloat = 0
    let max: CGFloat = 4
    let step: CGFloat = 1
    
    var body: some View {
        VStack {
            Text("How many bottles should he get?")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(width: 320)
                .multilineTextAlignment(.center)
                .foregroundColor(.teal)
                .italic()
            Slider(
                value: $value,
                in: min...max,
                step: step,
                minimumValueLabel: Text(formated(value: min)),
                maximumValueLabel: Text(formated(value: max)),
                label: { })
            .foregroundStyle(Color(.teal))
            .accentColor(.orange)
            .font(.headline)

            .padding()
        }
        .padding()
    }
    
    func formated(value: CGFloat) -> String {
        return String(format: "%.0f", value)
    }
    
}

#Preview {
    sliderView()
}
