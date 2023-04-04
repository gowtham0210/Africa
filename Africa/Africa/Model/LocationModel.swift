//
//  LocationModel.swift
//  Africa
//
//  Created by Gowtham Bujju on 04/04/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable{
    var id:String
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    //computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude:
                                longitude)
    }
}
