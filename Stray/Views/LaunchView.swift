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
    var body: some View {
        Text("Done")
            .padding()
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
