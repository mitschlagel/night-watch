//
//  DetailsView.swift
//  Night Watch
//
//  Created by Spencer Jones on 2/27/22.
//
import SwiftUI

struct DetailsView: View {
    let taskName: String
    
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder description")
            Text("Placeholder for mark complete button")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test Task")
    }
}
