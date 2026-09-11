//
//  TripDetailViewModel.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import Observation

@Observable
class TripDetailScreenViewModel {
    let trip: Trip
    
    init(trip: Trip) {
        self.trip = trip
    }
    
    func bookNow() {
        print("Book Now")
    }
}
