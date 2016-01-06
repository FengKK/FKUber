//
//  FXLocation.swift
//  FKUber
//
//  Created by 冯凯 on 16/1/6.
//  Copyright © 2016年 冯凯. All rights reserved.
//

import UIKit
import CoreLocation

class FXLocation: NSObject,CLLocationManagerDelegate
{
    var manager:CLLocationManager?
    
    func startLocation()
    {
        if CLLocationManager.locationServicesEnabled() {
            manager = CLLocationManager()
            
            manager?.delegate = self
            manager?.desiredAccuracy = kCLLocationAccuracyBest
            manager?.distanceFilter = 100
            
            manager?.startUpdatingLocation()
            if #available(iOS 8.0, *) {
                manager?.requestAlwaysAuthorization()
            } else {
                // Fallback on earlier versions
            }
        }
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        FxLog(String(status))
    }
    
    func searchAddress(location:CLLocation)
    {
        let corder = CLGeocoder()
        
        corder.reverseGeocodeLocation(location, completionHandler: {
            (marks:[CLPlacemark]?, error:NSError?) in
            
            if marks != nil {
                for mark in marks! {
                    FxLog(mark.name!)
                }
            }
        })
    }
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation)
    {
        searchAddress(newLocation)
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        searchAddress(locations[0])
        
        //停止更新位置（如果定位服务不需要实时更新的话，那么应该停止位置的更新）
        manager.stopUpdatingLocation()
    }
}
