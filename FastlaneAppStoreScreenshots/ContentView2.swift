//
//  ContentView2.swift
//  FastlaneAppStoreScreenshots
//
//  Created by Toomas Vahter on 11.04.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        Text("View 2")
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
