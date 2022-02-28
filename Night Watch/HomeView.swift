//
//  HomeView.swift
//  Night Watch
//
//  Created by Spencer Jones on 2/27/22.
//

import SwiftUI

struct HomeView: View {
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
                            NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                        })
                    }

                    Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks"))  {
                        ForEach(monthlyTasks, id: \.self, content: {
                            taskName in
                            NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                        })
                    }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
