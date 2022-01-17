//
//  ContentView.swift
//  JankyScout
//
//  Created by Parnika Chaturvedi on 1/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        VStack{
            Text("")
                .font(.title)
                .padding(150)
            
            Image("janksterLogoBg")
                .clipShape(Circle())
                .scaleEffect(0.3)
                .padding(-200)
                .shadow(radius: 0, x: 5, y: 5)
            
            Text("JankyScout")
                .font(Font.custom("Poppins-ExtraBold", size: 40))
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
            
            NavigationLink(destination: DataView()) {
                Text("VIEW DATA")
                    .font(Font.custom("Poppins-Bold", size: 20))
                    .frame(minWidth: 0, maxWidth:250)
                    .padding(10)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                    .cornerRadius(25)
            }
                .shadow(radius: 0, x: 5, y: 5)
                .padding(5)
            
            NavigationLink(destination: ScoutView()) {
                Text("START SCOUTING")
                    .font(Font.custom("Poppins-Bold", size: 20))
                    .frame(minWidth: 0, maxWidth:250)
                    .padding(10)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                    .cornerRadius(25)
            }
                .shadow(radius: 0, x: 5, y: 5)
                .padding(5)
            
            NavigationLink(destination: TutorialView()) {
                Text("TUTORIAL")
                    .font(Font.custom("Poppins-Bold", size: 20))
                    .frame(minWidth: 0, maxWidth:250)
                    .padding(10)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .background(Color(red: 0.26, green: 0.26, blue: 0.26))
                    .cornerRadius(25)
            }
                .shadow(radius: 0, x: 5, y: 5)
                .padding(5)
           
            Text("")
                .font(.title)
                .padding(200)
        }
        .background(Color(red: 0.13, green: 0.13, blue: 0.13))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
