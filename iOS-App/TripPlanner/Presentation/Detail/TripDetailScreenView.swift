//
//  TripDetailView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

struct TripDetailView: View {

    @State var viewModel: TripDetailViewModel

    var body: some View {

        ScrollView {

            VStack(spacing: 0) {

                HeroImageView(image: viewModel.trip.image)

                TripHeaderView(trip: viewModel.trip)

                AboutSectionView(text: viewModel.trip.description)

                //IncludedSectionView(items: viewModel.trip.includedItems)
            }

        }
        .ignoresSafeArea(edges: .top)
//        .safeAreaInset(edge: .bottom) {
//            BottomBookingBar(
//                price: viewModel.trip.price,
//                action: viewModel.bookNow
//            )
//            .background(.ultraThinMaterial)
//        }
        .navigationBarBackButtonHidden()
    }
}
