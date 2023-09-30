//
//  StatsView.swift
//  CFGDraughts
//
//  Created by Sarah Smith on 30/09/2023.
//

import SwiftUI

struct StatsView: View {
    var userProfile: UserProfile = UserProfile(username: "Sarah", gamesAttempted: 0)
    
    var body: some View {
        VStack {
            
            Text("\(userProfile.username)'s Stats")
                .font(.title)
            
            VStack{
                Text(userProfile.username)
                Text("\(userProfile.gamesAttempted)")
            }
        }

    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
