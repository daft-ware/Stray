//
//  ContentView.swift
//  Stray
//
//  Created by Rostislav Brož on 11/12/21.
//

import SwiftUI

// constant from which screen width and height is accessed
// to properly position and size objects
let screenSize: CGRect = UIScreen.main.bounds


// declaration of the UI colors as variables so it's easy to change them
// at any time

public var darkmodeBlack1 = Color(red: 0.004, green: 0, blue: 0)
public var darkmodeGray1 = Color(red: 0.6566, green: 0.6566, blue: 0.6566)
public var darkmodeGray2 = Color(red: 0.2266, green: 0.2266, blue: 0.2266)
public var darkmodeGray3 = Color(red: 0.1333, green: 0.1333, blue: 0.1373)
public var darkmodeWhite = Color(red: 1, green: 1, blue: 1)


struct LaunchView: View {
    @State public var darkmode:Bool = true
        
        func darklight() {
            darkmode = !darkmode
            
            if darkmode == true {
                darkmodeBlack1 = Color(red: 0.004, green: 0, blue: 0);
                darkmodeGray1 = Color(red: 0.6566, green: 0.6566, blue: 0.6566);
                darkmodeGray2 = Color(red: 0.2266, green: 0.2266, blue: 0.2266);
                darkmodeGray3 = Color(red: 0.1333, green: 0.1333, blue: 0.1373);
                darkmodeWhite = Color(red: 1, green: 1, blue: 1)
            }
            
            else if darkmode == false {
                darkmodeGray1 = Color(red: 1, green: 1, blue: 1);
                darkmodeGray2 = Color(red: 0.8, green: 0.8, blue: 0.8);
                darkmodeGray3 = Color(red: 0.6, green: 0.6, blue: 0.6);
                darkmodeWhite = Color(red: 0.004, green: 0, blue: 0)
            }
        }
        
        var body: some View {
            ZStack {
                darkmodeGray3.ignoresSafeArea()
                
                VStack {
                    HStack {
                        Spacer()
                        
                        Text("Settings")
                            .foregroundColor(darkmodeWhite)
                            .font(.system(size: screenSize.width / 10))
                            .padding()
                        
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    
                    ScrollView {
                        VStack {
                            HStack {
                                Spacer()
                                
                                Text("Accounts")
                                    .foregroundColor(darkmodeGray1)
                                    .font(.system(size: screenSize.width / 15))
                                
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                            
                            Button(action: {}, label: {
                                ZStack {
                                    Rectangle()
                                        .fill(darkmodeGray2)
                                        .frame(width: screenSize.width / 1.1, height: screenSize.width / 4)
                                        .cornerRadius(15)
                                    HStack {
                                        Spacer()
                                        
                                        Image("lol")
                                            .resizable()
                                            .frame(width: screenSize.width / 5.3, height: screenSize.width / 5.3)
                                            .clipShape(Circle())
                                            .overlay(Circle().stroke(darkmodeWhite, lineWidth: 2))
                                        
                                        Spacer()
                                        
                                        VStack {
                                            Text("Rostislav Brož")
                                                .foregroundColor(darkmodeWhite)
                                                .font(.system(size: screenSize.width / 18))
                                            
                                            Text("Gymnázium J. K. Tyla")
                                                .foregroundColor(darkmodeGray1)
                                                .font(.system(size: screenSize.width / 25))
                                        }
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .foregroundColor(darkmodeGray1)
                                            .frame(width: screenSize.width / 30, height: screenSize.width / 20)
                                        
                                        Spacer()
                                    }
                                }
                            })
                            
                            Button(action: {}, label: {
                                ZStack {
                                    Rectangle()
                                        .fill(darkmodeGray2)
                                        .frame(width: screenSize.width / 1.1, height: screenSize.width / 8)
                                        .cornerRadius(15)
                                    
                                    HStack {
                                        Image(systemName: "plus")
                                            .resizable()
                                            .foregroundColor(Color.blue)
                                            .frame(width: screenSize.width / 20, height: screenSize.width / 20)
                                        
                                        Text("Add account")
                                            .foregroundColor(Color.blue)
                                            .font(.system(size: screenSize.width / 18))
                                    }
                                }
                            })
                            
                            HStack {
                                Spacer()
                                
                                Text("Color theme")
                                    .foregroundColor(darkmodeGray1)
                                    .font(.system(size: screenSize.width / 15))
                                
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        
                            Group {
                                Button(action: {darklight();
                                }, label: {
                                    ZStack {
                                        Rectangle()
                                            .fill(darkmodeGray2)
                                            .frame(width: screenSize.width / 1.1, height: screenSize.width / 8)
                                            .cornerRadius(15)
                                        HStack {
                                            Text("Lame (default)")
                                                .foregroundColor(darkmodeWhite)
                                                .font(.system(size: screenSize.width / 18))
                                                .frame(width: screenSize.width / 1.5, height: screenSize.width / 8, alignment: .leading)
                                                
                                            
                                            Image(systemName: darkmode ? "checkmark" : "")
                                                .resizable()
                                                .frame(width: screenSize.width / 20, height: screenSize.width / 20)
                                                .foregroundColor(darkmodeGray1)
                                                
                                        }
                                    }
                                })
                                
                                Button(action: {darklight();
                                }, label: {
                                    ZStack {
                                        Rectangle()
                                            .fill(darkmodeGray2)
                                            .frame(width: screenSize.width / 1.1, height: screenSize.width / 8)
                                            .cornerRadius(15)
                                        HStack {
                                            Text("Light (lamer)")
                                                .foregroundColor(darkmodeWhite)
                                                .font(.system(size: screenSize.width / 18))
                                                .frame(width: screenSize.width / 1.5, height: screenSize.width / 8, alignment: .leading)
                                                
                                            
                                            Image(systemName: darkmode ? "" : "checkmark")
                                                .resizable()
                                                .frame(width: screenSize.width / 20, height: screenSize.width / 20)
                                                .foregroundColor(darkmodeGray1)
                                                
                                        }
                                    }
                                })
                            }
                            
                            Button(action: {}, label: {
                                ZStack {
                                    Rectangle()
                                        .fill(darkmodeGray2)
                                        .frame(width: screenSize.width / 1.1, height: screenSize.width / 8)
                                        .cornerRadius(15)
                                    HStack {
                                        Text("Sign out")
                                            .foregroundColor(Color.red)
                                            .font(.system(size: screenSize.width / 18))
                                            .frame(width: screenSize.width / 1.1, height: screenSize.width / 8)
                                            
                                    }
                                }
                            })
                        }
                    }
                }
            }
        }
    }


struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
