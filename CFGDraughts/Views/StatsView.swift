//
//  StatsView.swift
//  CFGDraughts
//
//  Created by Sarah Smith on 30/09/2023.
//

import SwiftUI

struct StatsView: View {
    @State var userProfile: UserProfile = UserProfile(username: "Sarah", gamesAttempted: 0)
    
    var body: some View {
        VStack {
            
            Text("\(userProfile.username)'s Stats")
                .font(.title)
            
            Form{
                HStack{
                    Text("Username:")
                    TextField("username", text: $userProfile.username)
                }
                HStack{
                    Text("Games Attempted:")
                    Text("\(userProfile.gamesAttempted)")
                }
            }
            
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
