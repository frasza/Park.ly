//
//  ParkingSpot.swift
//  Park.ly
//
//  Created by Žan Fras on 14/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit
import MapKit
import Contacts

class ParkingSpot: NSObject, MKAnnotation {
  
  let title: String?
  let locationName: String?
  var coordinate: CLLocationCoordinate2D
  var subtitle: String? {
    return locationName
  }
  
  init(title: String, locationName: String, coordinate: CLLocationCoordinate2D) {
    self.title = title
    self.locationName = locationName
    self.coordinate = coordinate
  }
  
  func mapItem(location: CLLocationCoordinate2D) -> MKMapItem {
    let addressDictionary = [String(CNPostalAddressStreetKey): subtitle]
    let placemark = MKPlacemark(coordinate: location, addressDictionary: addressDictionary)
    let mapItem = MKMapItem(placemark: placemark)
    mapItem.name = title
    
    return mapItem
  }
  
}
