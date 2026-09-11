//
//  Trip.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//
import SwiftUI

struct Trip:Identifiable,Equatable,Hashable {
    let id: Int
    
    let placeName: String
    let description: String
    let distance: String
    let rating:Int
    let image:String
    let price: String
    
}


extension Trip {
    
    static func getTrips() -> [Trip] {
        [
            Trip(
                id: 1,
                placeName: "Kerala\nGod's Own Country",
                description: "Backwaters, greenery, beaches, and rich cultural heritage.",
                distance: "1200 km",
                rating: 5,
                image: "karala",
                price: "5499"
            ),
            
            Trip(
                id: 2,
                placeName: "City of Love\nParis",
                description: "Iconic landmarks, romance, art, and elegant cafes.",
                distance: "1200 km",
                rating: 5,
                image: "paris",
                price: "9890"
            ),
            
            Trip(
                id: 3,
                placeName: "Mountain Adventure Escape\nManali",
                description: "Snowy peaks, trekking, rivers, and scenic landscapes.",
                distance: "1200 km",
                rating: 4,
                image: "manali",
                price: "4999"
            ),

            Trip(
                id: 4,
                placeName: "Land of Fjords\nNorway",
                description: "Stunning fjords, northern lights, and natural beauty.",
                distance: "1200 km",
                rating: 5,
                image: "norway",
                price: "8999"
            ),
            
            Trip(
                id: 5,
                placeName: "Beach Paradise Getaway\nGoa",
                description: "Golden beaches, nightlife, seafood, and water sports.",
                distance: "1200 km",
                rating: 4,
                image: "goa",
                price: "2990"
            )
        ]
    }
}

