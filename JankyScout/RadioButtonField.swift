//
//  RadioButtonField.swift
//  JankyScout
//
//  Created by Parnika Chaturvedi on 1/16/22.
//

import Foundation

import SwiftUI
struct RadioButtonField: View {
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let bgColor: Color
    let textSize: CGFloat
    let isMarked:Bool
    let callback: (String)->()
    
    init(
        id: String,
        label:String,
        size: CGFloat = 20,
        color: Color = Color.black,
        bgColor: Color = Color.black,
        textSize: CGFloat = 25,
        isMarked: Bool = false,
        callback: @escaping (String)->()
        ) {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.bgColor = bgColor
        self.textSize = textSize
        self.isMarked = isMarked
        self.callback = callback
    }
    
    var body: some View {
        Button(action:{
            self.callback(self.id)
        }) {
            HStack(alignment: .center) {
                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                    .clipShape(Circle())
                    .foregroundColor(self.bgColor)
                Text(label)
                    .font(Font.custom("Poppins-Bold", size: 20))
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(Color.white)
    }
}
