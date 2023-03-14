//
//  CoverImageView.swift
//  Africa
//
//  Created by Gowtham Bujju on 14/03/23.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImage:[CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//Loop
        }//tabview
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 300))
    }
}
