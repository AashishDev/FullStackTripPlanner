//
//  AboutSectionView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

struct AboutSectionView: View {
    let text: String

    var body: some View {

        VStack(alignment: .leading,spacing: 8) {

            Text("About")
                .font(.title3.bold())

            Text(text)
                .foregroundStyle(.secondary)
        }
    }
}
