//
//  MainView.swift
//  Africa
//
//  Created by Gowtham Bujju on 14/03/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Image(systemName: "square.grid.2x2")
                Text("Browse")
            }
            VideoListView().tabItem{
                Image(systemName: "play.rectangle")
                Text("Watch")
            }
            MapListView().tabItem{
                Image(systemName: "map")
                Text("Locations")
            }
            GalleryListView().tabItem{
                Image(systemName:"photo")
                Text("Gallery")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
