//
//  HeroImageView.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

struct HeroImageView: View {
    let image: String
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Image(image)
                .resizable()
               //.scaledToFill()
                .frame(height: 320)
                //.clipped()
            
            HStack {
                CircleButton(systemImage: "chevron.left")
                Spacer()
                
                CircleButton(systemImage: "heart")
                CircleButton(systemImage: "square.and.arrow.up")
            }
            .padding(.horizontal)
            .padding(.top,60)
        }
    }
}

struct CircleButton: View {
    let systemImage: String
    
    var body: some View {
        
        Button {
            
        } label: {
            
            Image(systemName: systemImage)
                .font(.title3)
                .foregroundStyle(.black)
                .frame(width: 44,height: 44)
                .background(.white)
                .clipShape(Circle())
        }
    }
}
