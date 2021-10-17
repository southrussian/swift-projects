//
//  ContentView.swift
//  ColorPicker
//
//  Created by Danil Peregorodiev on 26.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor = Color(.systemBackground)
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                ColorPicker("", selection: $backgroundColor)
                    .padding()
            }
            .navigationTitle("Color Picker!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
