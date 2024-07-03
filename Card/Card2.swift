//
//  Card2.swift
//  ViewsAndModifiers
//
//  Created by Aiman Daniel on 02/07/2024.
//

import SwiftUI

struct Card2: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Image("content2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350)
            
            Rectangle()
                .fill(.ultraThinMaterial)
                .frame(maxWidth: 350, maxHeight: 190)
                .mask {
                            VStack(spacing: 0) {
                                LinearGradient(
                                    colors: [
                                        Color.blue.opacity(1),
                                        Color.blue.opacity(0),
                                    ],
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                                Rectangle()
                            }
                        }
                        .frame(height: 90)
            Text("EvE: Bunka Album")
                .foregroundStyle(.white)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.bottom)
                .shadow(color: .black, radius: 20)
                                    
        }
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
    }
}

#Preview {
    Card2()
}
