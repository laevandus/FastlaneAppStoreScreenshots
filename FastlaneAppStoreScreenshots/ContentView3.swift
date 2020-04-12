//
//  ContentView3.swift
//  FastlaneAppStoreScreenshots
//
//  Created by Toomas Vahter on 11.04.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import SwiftUI

struct ContentView3: View {
    var body: some View {
        Text("View 3")
            .font(.largeTitle)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
