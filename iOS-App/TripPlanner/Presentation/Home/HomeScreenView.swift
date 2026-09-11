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
    @State private var router = AppRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            
            ScrollView {
                LazyVStack {
                    ForEach(trips){ trip in
                        TripCardView(trip: trip)
                            .padding(.vertical,5)
                            .onTapGesture {
                                router.navigate(to: .tripDetail(trip))
                            }
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
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                    
                case .tripDetail(let trip):
                    TripDetailView(
                        viewModel: TripDetailViewModel(trip: trip)
                    )
                }
            }
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
