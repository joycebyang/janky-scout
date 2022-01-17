//
//  InputView.swift
//  JankyScout
//
//  Created by Parnika Chaturvedi on 1/16/22.
//

import SwiftUI

struct InputView: View {
    //----- Auto -----
    @State private var alliance: String = ""
    @State private var autoComments: String = ""
    @State private var isPreload = false
    @State private var hasCrossed = false
    @State private var posSelection = 1
    
    @State var autoHighCount: Int = 0
    @State var autoLowCount: Int = 0
    
    @State var intakeCheckGround = false
    @State var intakeCheckStation = false
    @State var intakeCheckPreload = false
    
    var body: some View {
        ScrollView(showsIndicators: true){
        VStack(alignment: .center){
            Text("")
                .padding(.top, -1000)
            
            Text("AUTO")
                .font(Font.custom("Poppins-ExtraBold", size: 30))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(.top,-50)
                .padding(.bottom,-20)
           
            //----- PRELOAD -----
            Toggle("preload", isOn: $isPreload)
                .toggleStyle(SwitchToggleStyle(tint:Color(red: 0.89, green: 0.06, blue: 0.07)))
                .font(Font.custom("Poppins-Bold", size: 20))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 100))
            
            Text("")
                .padding(0)
            
            //----- POSITION -----
            HStack(alignment: .center) {
                Text("position ")
                    .font(Font.custom("Poppins-ExtraBold", size: 20))
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                
                Picker(selection: $posSelection, label: Text("pick")) {
                    Text("middle of tarmac").tag(1)
                        .font(Font.custom("Poppins-ExtraBold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    Text("next to hub").tag(2)
                        .font(Font.custom("Poppins-ExtraBold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    Text("edge of tarmac").tag(3)
                        .font(Font.custom("Poppins-ExtraBold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                }
            }
            
            Text("")
                .padding(0)
            
            //----- CROSSED -----
            Toggle("crossed", isOn: $hasCrossed)
                .toggleStyle(SwitchToggleStyle(tint:Color(red: 0.89, green: 0.06, blue: 0.07)))
                .font(Font.custom("Poppins-Bold", size: 20))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(EdgeInsets(top: 0, leading: 100, bottom: -100, trailing: 100))
            
            VStack(alignment: .center){
            
            //----- SHOTS -----
            VStack(alignment: .center) {
                //----- HIGH HUB -----
                HStack(alignment: .center){
                    Button(action: {
                        if (autoHighCount > 0) {
                            self.autoHighCount -= 1
                        }
                    }) {
                        Text("◂")
                            .font(Font.custom("Poppins-Bold", size: 50))
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    }
                    
                    Text("high hub: \(autoHighCount) ")
                        .font(Font.custom("Poppins-Bold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .padding(.top, 7)
                        
                    Button(action: {
                        self.autoHighCount += 1
                    }) {
                        Text("▸")
                            .font(Font.custom("Poppins-Bold", size: 50))
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    }
                }
                .padding(.bottom, -60)
                
                //----- LOW HUB -----
                HStack(alignment: .center){
                    Button(action: {
                        if (autoLowCount > 0) {
                            self.autoLowCount -= 1
                        }
                    }) {
                        Text("◂")
                            .font(Font.custom("Poppins-Bold", size: 50))
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    }
                    
                    Text("low hub: \(autoLowCount) ")
                        .font(Font.custom("Poppins-Bold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .padding(.top, 7)
                        
                    Button(action: {
                        self.autoLowCount += 1
                    }) {
                        Text("▸")
                            .font(Font.custom("Poppins-Bold", size: 50))
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))

                    }
                }

            }
            
            Text("")
                .padding(.bottom, -100)
            
            //----- CARGO FROM BUTTONS -----
            Text("cargo from...")
                .font(Font.custom("Poppins-Bold", size: 20))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .padding(.bottom, -10)
            
            //ground intake
            HStack(alignment: .center){
                Toggle(isOn: $intakeCheckGround, label: {
                    Text("ground intake")
                        .font(Font.custom("Poppins-Bold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                })
                    .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 0))
                    .toggleStyle(CheckboxStyle())
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 75))
                }
                
            Text("")
                .padding(.bottom, -50)
           
            //HP station intake
            HStack(alignment: .center){
                Toggle(isOn: $intakeCheckStation, label: {
                    Text("HP station")
                        .font(Font.custom("Poppins-Bold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                })
                    .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 0))
                    .toggleStyle(CheckboxStyle())
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 75))
                }
                
            Text("")
                .padding(.bottom, -50)
            
            //preload
            HStack(alignment: .center){
                Toggle(isOn: $intakeCheckPreload, label: {
                    Text("preload")
                        .font(Font.custom("Poppins-Bold", size: 20))
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                })
                    .padding(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 0))
                    .toggleStyle(CheckboxStyle())
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: -20, trailing: 75))
                }
            
            //----- AUTO COMMENTS -----
            VStack(alignment: .center){
                
                Text("comments")
                     .font(Font.custom("Poppins-Bold", size: 20))
                     .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                     .padding(.bottom,-10)
                     .padding(.top,20)
               
                TextField("", text: $autoComments)
                    .font(Font.custom("Poppins-Bold", size: 15))
                    .frame(minWidth: 0, maxWidth:250, minHeight: 100, maxHeight: 200)
                    .padding(10)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                    .cornerRadius(25)
                
                Text("")
                    .padding(90)
            }
            
        }//end vstack
            
        }
    }
    .background(Color(red: 0.13, green: 0.13, blue: 0.13))
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
    }
}
