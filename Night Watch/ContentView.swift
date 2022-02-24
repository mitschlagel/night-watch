//
//  ContentView.swift
//  Night Watch
//
//  Created by Spencer Jones on 2/24/22.
//

import SwiftUI

struct ContentView: View {
    
    //"safe area" is the space on screen minus any notches or status bars on the screen
    
    // body must return ONE instance of some kind of view
    var body: some View {
        
        // combine views together into layout containers, and view returns one parent container
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Nightly Tasks")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                        .textCase(.uppercase)
                    Text("Check all windows")
                    Text("Check all doors")
                    Text("Check that the safe is locked")
                    Text("Check the mailbox")
                    Text("Inspect security cameras")
                    Text("Clear ice from sidewalks")
                    Text("Document \"strange and unusual\" occurances")
                    Text("Weekly Tasks")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                        .textCase(.uppercase)
                    Text("Monthly Tasks")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                        .textCase(.uppercase)
                }
                .foregroundColor(.gray)
                Spacer()
            }
            .padding([.top, .leading])
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
