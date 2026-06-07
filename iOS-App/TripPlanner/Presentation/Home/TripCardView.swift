//
//  TripCardView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//

import SwiftUI

struct TripCardView: View {
    @State var isFavourite =  false
    var trip:Trip
    
    var body: some View {
        
        VStack(alignment:.leading,spacing:0){
            trip.image
                .resizable()
                .scaledToFill()
                .frame(height: 190)
                .frame(maxWidth: .infinity)
                .clipped()
                .overlay(alignment: .topTrailing) {
                    Button {
                        print("Favourite button Tapped")
                        isFavourite.toggle()
                    } label: {
                        Image(systemName:isFavourite ? "heart.fill" : "heart")
                            .font(.title3)
                            .foregroundStyle(isFavourite ? .red : .black)
                            .padding(8)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                            .padding(8)
                    }
                }
            
            VStack(alignment: .leading,spacing: 8) {
                Text(trip.placeName)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(trip.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                
                FooterView(
                    rating: trip.rating,
                    distance: "1200 km",
                    price: trip.price
                )
                .padding(.top,8)
            }
            .padding()
        }
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 16,
                             style: .continuous)
        )
        .shadow(color: Color.black.opacity(0.12),
                radius: 8,
                x: 0, y: 4)
        
    }
}

#Preview {
    TripCardView(isFavourite: true, trip: Trip.getTrips().first!)
        .frame(maxWidth: .infinity)
        .padding()
}
