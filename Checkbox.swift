//
//  Checkbox.swift
//  JankyScout
//
//  Created by Parnika Chaturvedi on 1/17/22.
//

import Foundation

import SwiftUI

struct CheckboxStyle: ToggleStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
 
        return HStack {
 
            configuration.label
 
            Spacer()
 
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? Color(red: 0.89, green: 0.06, blue: 0.07) : Color(red: 0.95, green: 0.95, blue: 0.95))
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
 
    }
}
