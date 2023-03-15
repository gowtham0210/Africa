//
//  HeadingView.swift
//  Africa
//
//  Created by Gowtham Bujju on 15/03/23.
//

import SwiftUI

struct HeadingView: View {
    var headingImage: String
    var headingText: String
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText).font(.title3).fontWeight(.bold)
        }//HSTACK
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled",
        headingText: "Wilderness in pictures").previewLayout(.sizeThatFits).padding()
    }
}
