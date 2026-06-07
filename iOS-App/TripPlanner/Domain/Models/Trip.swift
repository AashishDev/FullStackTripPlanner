//
//  Trip.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//
import SwiftUI

struct Trip:Identifiable {
    let id: Int
    
    let placeName: String
    let description: String
    let rating:Int
    let image:Image
    let price: Int
}


extension Trip {
    
    static func getTrips() -> [Trip] {
        [
            Trip(
                id: 1,
                placeName: "Kerala\nGod's Own Country",
                description: "Backwaters, greenery, beaches, and rich cultural heritage.",
                rating: 5,
                image: Image("karala"),
                price: 54999
            ),
            
            Trip(
                id: 2,
                placeName: "City of Love\nParis",
                description: "Iconic landmarks, romance, art, and elegant cafes.",
                rating: 5,
                image: Image("paris"),
                price: 989990
            ),
            
            Trip(
                id: 3,
                placeName: "Mountain Adventure Escape\nManali",
                description: "Snowy peaks, trekking, rivers, and scenic landscapes.",
                rating: 4,
                image: Image("manali"),
                price: 49999
            ),

            Trip(
                id: 4,
                placeName: "Land of Fjords\nNorway",
                description: "Stunning fjords, northern lights, and natural beauty.",
                rating: 5,
                image: Image("norway"),
                price: 85999
            ),
            
            Trip(
                id: 5,
                placeName: "Beach Paradise Getaway\nGoa",
                description: "Golden beaches, nightlife, seafood, and water sports.",
                rating: 4,
                image: Image("goa"),
                price: 29990
            )
        ]
    }
}

