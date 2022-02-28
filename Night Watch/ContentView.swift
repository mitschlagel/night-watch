//
//  ContentView.swift
//  Night Watch
//
//  Created by Spencer Jones on 2/24/22.
//

import SwiftUI

let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Check that the safe is locked",
    "Check the mailbox"
    
]

let weeklyTasks = [
    "Check the sports scores",
    "Kick out squatters",
    "Get bats out of fireplaces",
    "Document \"strange and unusual\" occurences"
]

let monthlyTasks = [
    "Check the sports scores",
    "Kick out squatters",
    "Get bats out of fireplaces"
]

struct ContentView: View {
    
    //"safe area" is the space on screen minus any notches or status bars on the screen
    
    // body must return ONE instance of some kind of view
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Home")
                Image(systemName: "house")
            }
            MapView().tabItem {
                Text("Map")
                Image(systemName: "map")
            }
            SettingsView().tabItem {
                Text("Settings")
                Image(systemName: "gear")
            }
        }
            
        
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct MapView: View {
    var body: some View {
        Text("TODO: build map screen")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("TODO: build settings screen")
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }
        .font(.title3)
    }
}

