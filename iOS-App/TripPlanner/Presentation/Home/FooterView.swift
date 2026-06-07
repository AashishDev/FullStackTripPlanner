//
//  FooterView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//

import SwiftUI

struct FooterView: View {
    
    let rating:Int
    let distance:String
    let price:Int
    
    var body: some View {
        HStack {
            
            Label("\(rating)", systemImage: "star.fill")
                .foregroundStyle(.orange)
            
            Spacer()
            
            Divider()
                .frame(height: 20)
            
            Spacer()
            
            Label(distance, systemImage: "location.north.fill")
                .foregroundStyle(.blue)
            
            Spacer()
            
            Divider()
                .frame(height: 20)
            
            Spacer()
            
            HStack(spacing: 4) {
                Image(systemName: "indianrupeesign")
                Text("\(price)")
            }
            .foregroundStyle(.green)
        }
        .font(.subheadline)
        .fontWeight(.medium)
    }
    
    @ViewBuilder
    private func footerItem(
        _ title: String,
        icon: String,
        textColor: Color
    ) -> some View {
        HStack(alignment:.center, spacing: 5) {
            Image(systemName: icon)
                .foregroundStyle(textColor)
            Text(title)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity)
        .background(Color.yellow)
    }
}

#Preview {
    FooterView(
        rating: 4,
        distance: "1200 km",
        price: 15990
    ).fixedSize()
}




