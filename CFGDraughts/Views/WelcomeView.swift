//
//  ContentView.swift
//  CFGDraughts
//
//  Created by Sarah Smith on 29/09/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Draughts")
                    .font(.largeTitle)
                Spacer()
                VStack(alignment: .leading){
                    NavigationLink(destination: GameModeView()) {
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.purple)
                            Text("Play")
                        }
                    }
                    NavigationLink(destination: StatsView()) {
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.purple)
                            Text("Stats")
                        }
                    }

                }
                Spacer()
                Text("CFG IOS App Dev MOOC")
            }
            .padding()
        }

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
