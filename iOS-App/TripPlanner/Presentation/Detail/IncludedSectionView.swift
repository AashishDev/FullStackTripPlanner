//
//  IncludedSectionView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

struct IncludedSectionView: View {

    let items: [String]

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Text("Included in this trip")
                .font(.title3.bold())

            ForEach(items,id:\.self) { item in

                HStack {

                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.green)

                    Text(item)

                    Spacer()
                }
            }
        }
        .padding()
    }
}
