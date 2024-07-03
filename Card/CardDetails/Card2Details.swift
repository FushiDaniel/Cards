//
//  CardView.swift
//  ViewsAndModifiers
//
//  Created by Aiman Daniel on 28/06/2024.
//

import SwiftUI

struct Card2Details: View {
    var body: some View {
        
        ZStack{
            Color("bgcontent2")
                
            ScrollView{
                VStack(spacing: 11){
                    ZStack(alignment: .bottom){
                        Image("content2")
                            .resizable()
                            .scaledToFit()
                        
                        Rectangle()
                            .fill(.thinMaterial)
                            .frame(minWidth: 20, maxHeight: 190)
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
                        Text("EvE: Bunka Album")
                            .foregroundStyle(.white)
                            .font(.system(size: 27))
                            .fontWeight(.bold)
                            .padding(.bottom)
                            .shadow(color: .black, radius: 18)
                                                
                    }
                    Text("Bunka (文化) is Eve's 4th album and his first album where all songs were written by Eve himself.")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .padding()
                    
                    Text("When asked about the origins of the album name, Eve talked about how although culture is usually used in terms of a particular country or region, there's also culture in smaller communities like elementary schools or within one's family. Having become an adult, he's come to realise that there may be differences between his individual culture compared to others' and feels this could cause a dilemma. When writing the album, he tried to write about things that he considered to be his norm. Although there may be parts that others won't understand, arranging the words that are within him and searching for the most impactful and suitable words when putting the songs together, that word being Bunka.")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .padding()
                    
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    Card2Details()
}



