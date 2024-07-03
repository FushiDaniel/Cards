//
//  Card1.swift
//  ViewsAndModifiers
//
//  Created by Aiman Daniel on 29/06/2024.
//

import SwiftUI

struct Card1: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Image("content1")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350)
            
            Rectangle()
                .fill(.thinMaterial)
                .frame(maxWidth: 350, maxHeight: 190)
                .mask {
                            VStack(spacing: 0) {
                                LinearGradient(
                                    colors: [
                                        Color.black.opacity(1),
                                        Color.black.opacity(0),
                                    ],
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                                Rectangle()
                            }
                        }
                        .frame(height: 90)
            Text("Alohaii : Summertide Album")
                .foregroundStyle(.white)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.bottom)
                .shadow(color: .black, radius: 18)
                                    
        }
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
    }
}

#Preview {
    Card1()
}
