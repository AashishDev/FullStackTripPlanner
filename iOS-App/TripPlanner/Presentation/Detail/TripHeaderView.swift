//
//  TripHeaderView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

struct TripHeaderView: View {
    let trip: Trip

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Text(trip.placeName)
                .font(.title.bold())

            Text(trip.description)
                .font(.body)

            HStack {

                DetailStatView(
                    icon: "star.fill",
                    color: .orange,
                    value: "\(trip.rating)"
                )

                Spacer()

                DetailStatView(
                    icon: "location.fill",
                    color: .blue,
                    value: trip.distance
                )

                Spacer()

                Text("₹ \(trip.price)")
                    .font(.title3.bold())
                    .foregroundStyle(.green)
            }
        }
        .padding()
    }
}

struct DetailStatView: View {

    let icon: String
    let color: Color
    let value: String

    var body: some View {

        HStack {

            Image(systemName: icon)
                .foregroundStyle(color)

            Text(value)
                .fontWeight(.medium)
        }
    }
}
