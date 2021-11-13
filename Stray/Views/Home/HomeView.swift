//
//  HomeView.swift
//  Stray
//
//  Created by Rostislav Brož on 11/13/21.
//

import SwiftUI

public struct SearchPlaceholderStyle: ViewModifier {
    var showPlaceHolder: Bool
    var placeholder: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceHolder {
                Text(placeholder)
                    .padding(.horizontal, 15)
                    .foregroundColor(darkmodeWhite)
            }
            content
                .foregroundColor(darkmodeGray3)
                .padding(5.0)
        }
    }
}


struct HomeView: View {
    
    @State private var showingMenuSheet = false
    
    @State private var search: String = ""
    @State private var isEditingSearch = false
    
    @State var classrooms: [String] = ["304", "80", "734", "320", "567", "230", "340"]
    
    
    var body: some View {
        ZStack {
            darkmodeBlack1.ignoresSafeArea()
    
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(darkmodeGray3)
                            .frame(width: screenSize.width / 1.8, height: screenSize.width / 7)
                            .cornerRadius(15)
                        
                        TextField("", text: $search)
                            .modifier(SearchPlaceholderStyle(showPlaceHolder: search.isEmpty,
                                placeholder: "Search your school"))
                            .disableAutocorrection(true)
                            .frame(width: screenSize.width / 2, height: screenSize.width / 7, alignment: .center)
                    }
                
                    ZStack {
                        Rectangle()
                            .fill(darkmodeGray3)
                            .frame(width: screenSize.width / 7, height: screenSize.width / 7)
                            .cornerRadius(15)
                        
                        Button(action: {showingMenuSheet.toggle()}, label: {
                            Image(systemName: "gear")
                                .resizable()
                                .foregroundColor(darkmodeWhite)
                                .frame(width: screenSize.width / 13, height: screenSize.width / 13)
                        }).sheet(isPresented: $showingMenuSheet) {
                                MenuView()
                            }
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(darkmodeGray3)
                            .frame(width: screenSize.width / 7, height: screenSize.width / 7)
                            .cornerRadius(15)
                        
                        Button(action: {showingMenuSheet.toggle()}, label: {
                            Image(systemName: "list.bullet")
                                .resizable()
                                .foregroundColor(darkmodeWhite)
                                .frame(width: screenSize.width / 14, height: screenSize.width / 15)
                        }).sheet(isPresented: $showingMenuSheet) {
                                MenuView()
                            }
                    }
                }
                
                HStack {
                    ScrollView {
                        
                    }
                }
                
                Spacer()
                Spacer()
                
                Button(action: {showingMenuSheet.toggle()}, label: {
                    Text("235\nChemistry with Ms. Roušalová")
                        .foregroundColor(darkmodeWhite)
                }).sheet(isPresented: $showingMenuSheet) {
                        MenuView()
                    }
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
