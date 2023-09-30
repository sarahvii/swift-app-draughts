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
                        .onSubmit {
                            saveUserProfile()
                        }
                }
                HStack{
                    Text("Games Attempted:")
                    Text("\(userProfile.gamesAttempted)")
                }
            }
            
        }.onAppear{
            loadUserProfile()
        }
        
    }
    
    func saveUserProfile() {
        UserDefaults.standard.set(userProfile.username, forKey: "username")
        UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
    }
    
    func loadUserProfile() {
        loadUserName()
        loadGamesAttempted()
    }
    
    
    
    func loadUserName() {
        if(UserDefaults.standard.object(forKey: "username") != nil) {
            userProfile.username = UserDefaults.standard.string(forKey: "username")!
        }
        
    }
    
    func loadGamesAttempted() {
        if(UserDefaults.standard.object(forKey: "gamesAttempted") != nil) {
            userProfile.gamesAttempted = UserDefaults.standard.integer(forKey: "gamesAttempted")
        }
    }
}
    
    
    struct StatsView_Previews: PreviewProvider {
        static var previews: some View {
            StatsView()
        }
    }

