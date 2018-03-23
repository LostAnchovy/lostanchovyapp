//
//  location.swift
//  The Lost Anchovy
//
//  Created by keith Nguyen on 2/27/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import Foundation
import MapKit
import Contacts


class Location: NSObject, MKAnnotation {
    let title: String?
    let detailsLabel: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, detailsLabel: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.detailsLabel = detailsLabel
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    var subtitle: String? {
        return detailsLabel
        
    }
    
    func mapItem() -> MKMapItem {
        let addressDict = [CNPostalAddressStreetKey: subtitle!]
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDict)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        return mapItem
    }
    
}
