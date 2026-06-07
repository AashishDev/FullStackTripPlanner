//
//  HomeScreenView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//

import SwiftUI

struct HomeScreenView: View {
    
    @State var searchText: String = ""
    let trips = Trip.getTrips()
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                LazyVStack {
                    ForEach(trips){ trip in
                        TripCardView(trip: trip)
                            .padding(.vertical,5)
                    }
                }
                .padding(.horizontal,16)
            }
            .navigationTitle("Trips")
            .navigationBarTitleDisplayMode(.large)
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Search destinations"
            )
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Notification tapped")
                    }
                    label:{
                        Image(systemName: "bell")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
