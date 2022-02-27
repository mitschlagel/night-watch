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
        
            
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                        ForEach(nightlyTasks, id: \.self, content: {
                            taskName in
                            NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                        })
                    }
                    
                    Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks"))  {
                        ForEach(weeklyTasks, id: \.self, content: {
                            taskName in
                            NavigationLink(taskName, destination: Text(taskName))
                        })
                    }
                    
                    Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks"))  {
                        ForEach(monthlyTasks, id: \.self, content: {
                            taskName in
                            NavigationLink(taskName, destination: Text(taskName))
                        })
                    }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
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

