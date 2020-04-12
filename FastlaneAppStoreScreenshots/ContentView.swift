//
//  ContentView.swift
//  FastlaneAppStoreScreenshots
//
//  Created by Toomas Vahter on 11.04.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresentingScreen2 = false
    @State private var isPresentingScreen3 = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                Text("View 1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button(action: {
                    self.isPresentingScreen2.toggle()
                }, label: {
                    Text("Show View X").foregroundColor(.white)
                }).accessibility(identifier: "Button1")
                    .sheet(isPresented: $isPresentingScreen2, content: {
                    ContentView2()
                })
                Button(action: {
                    self.isPresentingScreen3.toggle()
                }, label: {
                    Text("Show View Y").foregroundColor(.white)
                }).accessibility(identifier: "Button2")
                    .sheet(isPresented: $isPresentingScreen3, content: {
                    ContentView3()
                })
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
