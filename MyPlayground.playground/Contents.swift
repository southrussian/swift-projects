import Foundation
import CoreLocation

class MyLocationManager: NSObject, CLLocationManagerDelegate {
    let locationManager: CLLocationManager
    
    private var completionHandler: ((_ location: CLLocation) -> Void)? // <1>
    
    override init() {
        locationManager = CLLocationManager()
        super.init()
        locationManager.delegate = self
    }
    
    func getCurrentLocation(_ completion: @escaping (_ location: CLLocation) -> Void) { // <2>
        completionHandler = completion // <3>
        locationManager.requestLocation()
    }
    
    // MARK: - CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            completionHandler?(location) // <4>
            completionHandler = nil // <5>
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {}
}


