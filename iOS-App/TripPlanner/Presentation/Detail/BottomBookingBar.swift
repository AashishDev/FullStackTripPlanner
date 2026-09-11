//
//  BottomBookingBar.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

struct BottomBookingBar: View {
    let price: String
    let action: () -> Void

    var body: some View {

        HStack {

            VStack(alignment: .leading) {

                Text("₹ \(price)")
                    .font(.title.bold())
                    .foregroundStyle(.green)

                Text("Per Person")
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Button(action: action) {

                Text("Book Now")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 180,height: 54)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        }
        .padding()
    }
}
