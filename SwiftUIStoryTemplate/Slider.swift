//
//  Slider.swift
//  SwiftUIStoryTemplate
//
//  Created by Shaundra Hamilton on 11/16/23.
//

import SwiftUI

struct SliderView: View {
    
    @State var value: CGFloat = 10
    let min: CGFloat = 5
    let max: CGFloat = 20
    let step: CGFloat = 5
    
    var body: some View {
        VStack {
            Text(formated(value: value))
            
            Slider(
                value: $value,
                in: min...max,
                step: step,
                minimumValueLabel: Text(formated(value: min)),
                maximumValueLabel: Text(formated(value: max)),
                label: { })

            VStack(spacing: 0) {
                Slider(
                    value: $value,
                    in: min...max,
                    step: step)
                    .accentColor(.red)
                
                HStack(spacing: 0) {
                    let count: Int = Int((max / step))
                    ForEach(0..<count) { index in
                        VStack {
                            Text("I")
                            Text("\(index * Int(step) + Int(min))")
                        }
                        .offset(x:
                          index == 1 ? 5 :
                          index == 2 ? 4 :
                          0
                        )
                        if index != (count - 1) {
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, 8)
            }
            .padding()
        }
        .padding()
    }
    
    func formated(value: CGFloat) -> String {
        return String(format: "%.0f", value)
    }
    
}

#Preview {
    Slider()
}
