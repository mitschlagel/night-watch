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
                    
                    // MARK: Nightly Tasks
                    Group {
                        VStack(alignment: .leading) {
                            HStack(alignment: .bottom) {
                                Text(Image(systemName: "moon.stars"))
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                    .textCase(.uppercase)
                                Text("Nightly Tasks")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                    .textCase(.uppercase)
                            }
                            .padding(.bottom, 1.0)
                            
                            Text("Check all windows")
                            Text("Check all doors")
                            Text("Check that the safe is locked")
                            Text("Check the mailbox")
                            Text("Inspect security cameras")
                            Text("Clear ice from sidewalks")
                            Text("Document \"strange and unusual\" occurences")
                            
                        }
                    }
                    Group() {
                        VStack(alignment: .leading) {
                            HStack(alignment: .bottom) {
                                Text(Image(systemName: "sunset"))
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                    .textCase(.uppercase)
                                Text("Weekly Tasks")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                    .textCase(.uppercase)
                            }
                            .padding(.bottom, 1.0)
                            Text("stuff")
                            
                        }
                        .padding(.bottom)
                    }
                    Group {
                        VStack(alignment: .leading) {
                            HStack(alignment: .bottom) {
                                Text(Image(systemName: "calendar"))
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
                            .padding(.bottom, 1.0)
                            
                            
                        }
                    }
                    
                    
                    
                    
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
