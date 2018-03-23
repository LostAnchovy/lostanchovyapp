//
//  ViewController.swift
//  The Lost Anchovy
//
//  Created by keith Nguyen on 2/27/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {


    @IBOutlet weak var mapView: MKMapView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude:37.328359 , longitude: -121.807464)
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius, regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        mapView?.delegate = self
        
        let alviso = Location(title: "Alviso Park",
                              detailsLabel: "1195 Hope St, Alviso, CA 95002",
                              discipline: "Sculpture",
                              coordinate: CLLocationCoordinate2D(latitude: 37.430553 , longitude: -121.979335))
        mapView?.addAnnotation(alviso)
        
        let Rockwall = Location(title: "Alameda Rockwall",
                                detailsLabel: "190 Central Ave, Alameda, CA 94501",
                                discipline: "Monument",
                                coordinate: CLLocationCoordinate2D(latitude: 37.769939 , longitude: -122.290895))
        mapView?.addAnnotation(Rockwall)
        
        let oyster = Location(title: "Oyster Point",
                              detailsLabel: "95 Harbor Master Rd, SSF, CA 94080",
                              discipline: "Monument",
                              coordinate: CLLocationCoordinate2D(latitude: 37.662627 , longitude: -122.374950))
        mapView?.addAnnotation(oyster)
        
        let paradise = Location(title: "Paradise Park",
                                detailsLabel: "95 Harbor Master Rd, SSF, CA 94080",
                                discipline: "Monument",
                                coordinate: CLLocationCoordinate2D(latitude: 37.892947 , longitude: -122.457130))
        mapView?.addAnnotation(paradise)
        
        let chinacamp = Location(title: "china camp state park",
                                 detailsLabel: "100 China Camp Village Rd, San Rafael, CA 94901",
                                 discipline: "Monument",
                                 coordinate: CLLocationCoordinate2D(latitude: 38.002006 , longitude:  -122.462530))
        mapView?.addAnnotation(chinacamp)
        
        let hmb = Location(title: "half moon bay",
                           detailsLabel: "1 Johnson Pier, Half Moon Bay, CA 94019",
                           discipline: "Monument",
                           coordinate: CLLocationCoordinate2D(latitude: 37.503614 , longitude:  -122.480944))
        mapView?.addAnnotation(hmb)
        let santacruz = Location(title: "Santa Cruz Harbor",
                                 detailsLabel: "135 5th Ave, Santa Cruz, CA 95062",
                                 discipline: "Monument",
                                 coordinate: CLLocationCoordinate2D(latitude: 36.9670364, longitude:  -122.0091951))
        mapView?.addAnnotation(santacruz)
        
        mapView?.addAnnotation(hmb)
        let berkeleyharbor = Location(title: "Berkeley Harbor",
                                      detailsLabel: "Spinnaker Way, Berkeley, CA 94720",
                                      discipline: "Monument",
                                      coordinate: CLLocationCoordinate2D(latitude: 37.868407, longitude:  -122.317725))
        mapView?.addAnnotation(berkeleyharbor)
        
        let monterey = Location(title: "monterey Bay",
                                      detailsLabel: "588 Del Monte Blvd Parking, Monterey, CA 93940",
                                      discipline: "Monument",
                                      coordinate: CLLocationCoordinate2D(latitude: 36.600392, longitude:  -121.887333))
        mapView?.addAnnotation(monterey)
        
        let mosslanding = Location(title: "Moss Landing",
                                detailsLabel: "2390 California 1, Moss Landing, CA 95039",
                                discipline: "Monument",
                                coordinate: CLLocationCoordinate2D(latitude: 36.811628, longitude:  -121.786285))
        mapView?.addAnnotation(mosslanding)
        
        let shermanlake = Location(title: "Sherman Lake Marina",
                                   detailsLabel: "Sherman Island Rd, Rio Vista, CA 94571",
                                   discipline: "Monument",
                                   coordinate: CLLocationCoordinate2D(latitude: 38.056462, longitude: -121.786058))
        mapView?.addAnnotation(shermanlake)
        
        let beldenslanding = Location(title: "beldends Landing Boat Launch",
                                   detailsLabel: "2141 Grizzly Island Rd, Suisun City, CA 94585",
                                   discipline: "Monument",
                                   coordinate: CLLocationCoordinate2D(latitude: 38.188588, longitude: -121.975580))
        mapView?.addAnnotation(beldenslanding)
        
        let nickscove = Location(title: "Millers Boat Launch",
                                      detailsLabel: "23240 CA-1, Marshall, CA 94940",
                                      discipline: "Monument",
                                      coordinate: CLLocationCoordinate2D(latitude: 38.199972, longitude: -122.921564))
        mapView?.addAnnotation(nickscove)
        
    }
    
}

extension ViewController: MKMapViewDelegate {
    // 1
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2
        guard let annotation = annotation as? Location else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            
            //            let gateButton = UIButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 50, height: 50)))
            //            gateButton.setBackgroundImage(UIImage(named: "gate"), for: UIControlState())
            //            view.leftCalloutAccessoryView = gateButton
            
            let mapsButton = UIButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 30, height: 30)))
            mapsButton.setBackgroundImage(UIImage(named: "map"), for: UIControlState())
            view.rightCalloutAccessoryView = mapsButton
            //            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            
        }
        return view
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
        let location = view.annotation as! Location
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMaps(launchOptions: launchOptions)
    }
}


