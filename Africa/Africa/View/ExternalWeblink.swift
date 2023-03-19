//
//  ExternalWeblink.swift
//  Africa
//
//  Created by Gowtham Bujju on 18/03/23.
//

import SwiftUI

struct ExternalWeblink: View {
    let animal:Animal
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
            }
        }
    }
}

struct ExternalWeblink_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
    
        ExternalWeblink(animal: animals[0])
            .previewLayout(.sizeThatFits).padding()
    }
}

