//
//  ScoutView.swift
//  JankyScout
//
//  Created by Parnika Chaturvedi on 1/14/22.
//

import SwiftUI

struct ScoutView: View {
    @State private var scouterName: String = ""
    @State private var teamNumber: String = ""
    @State private var matchNumber: String = ""
    @State private var alliance: String = ""
    
    var body: some View {
        VStack(alignment: .center){
            Text("")
                .padding(-200)
            
            Text("START SCOUTING")
                .font(Font.custom("Poppins-ExtraBold", size: 30))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
           
            //----- TEAM NUMBER -----
            Text("team number")
                .font(Font.custom("Poppins-Bold", size: 20))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(-10)
           
            TextField("", text: $teamNumber)
                .font(Font.custom("Poppins-Bold", size: 20))
                .frame(minWidth: 0, maxWidth:150)
                .padding(10)
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                .cornerRadius(25)
            
            Text("")
                .padding(0)
            
            //----- ALLIANCE BUTTONS -----
            Text("alliance")
                .font(Font.custom("Poppins-Bold", size: 20))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(-10)
            
            HStack(alignment: .center) {
                RadioButtonField(
                        id: "red",
                        label: "red",
                        color: Color(red: 0.89, green: 0.06, blue: 0.07),
                        bgColor: Color(red: 0.89, green: 0.06, blue: 0.07),
                        isMarked: $alliance.wrappedValue == "Red" ? true : false,
                        callback: { selected in
                            self.alliance = selected
                            print("Selected Alliance is: \(selected)")
                        }
                )
                    .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 0))
                    
                RadioButtonField(
                    id: "blue",
                    label: "blue",
                    color: Color(red: 0.05, green: 0.14, blue: 0.89),
                    bgColor: Color(red: 0.05, green: 0.14, blue: 0.89),
                    isMarked: $alliance.wrappedValue == "Blue" ? true : false,
                    callback: { selected in
                        self.alliance = selected
                        print("Selected Alliance is: \(selected)")
                    }
                )
            }
            
            Text("")
                .padding(0)
            
            VStack(alignment: .center){
                //----- SCOUTER NAME -----
                Text("scouter name")
                     .font(Font.custom("Poppins-Bold", size: 20))
                     .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                     .padding(-10)
               
                TextField("", text: $scouterName)
                    .font(Font.custom("Poppins-Bold", size: 20))
                    .frame(minWidth: 0, maxWidth:250)
                    .padding(10)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                    .cornerRadius(25)
                
                Text("")
                    .padding(1)
                
                //----- MATCH NUMBER -----
                Text("match number")
                     .font(Font.custom("Poppins-Bold", size: 20))
                     .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                     .padding(-10)
               
                TextField("", text: $matchNumber)
                    .font(Font.custom("Poppins-Bold", size: 20))
                    .frame(minWidth: 0, maxWidth:150)
                    .padding(10)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                    .cornerRadius(25)
                
                Text("")
                    .padding(0)
                
                //----- START BUTTON -----
                NavigationLink(destination: InputView()) {
                    Text("START")
                        .font(Font.custom("Poppins-ExtraBold", size: 30))
                        .frame(minWidth: 0, maxWidth:250)
                        .padding(10)
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .background(Color(red: 0.89, green: 0.06, blue: 0.07))
                        .cornerRadius(25)
                }
                    .shadow(radius: 0, x: 5, y: 5)
                    .padding(5)
        
            } //vstack
            
            Text("")
                .padding(50)
            
        }//end vstack
        .background(Color(red: 0.13, green: 0.13, blue: 0.13))
    }
}


struct ScoutView_Previews: PreviewProvider {
    static var previews: some View {
        ScoutView()
    }
}
