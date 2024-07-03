//
//  CardView.swift
//  ViewsAndModifiers
//
//  Created by Aiman Daniel on 28/06/2024.
//

import SwiftUI

struct Card1Details: View {
    var body: some View {
        
        ZStack{
            Color("bgcontent")
                
            ScrollView{
                VStack(spacing: 11){
                    ZStack(alignment: .bottom){
                        Image("content1")
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
                        Text("Alohaii : Summertide Album")
                            .foregroundStyle(.white)
                            .font(.system(size: 27))
                            .fontWeight(.bold)
                            .padding(.bottom)
                            .shadow(color: .black, radius: 18)
                                                
                    }
                    Text("Alohaii is finally back with a new album: Another ode to summer, SUMMERTIDE. This marks Alohaii's third album since Maritime (2020) and Virtual Paradise (2023). ")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .padding(.top)
                    
                    Text("It is also worth noting that this is Alohaii's first album where he bears the Alohaii branding, as he was previously known as Lone Alpha. With the album set to be released on June 21, MusicDrop recently caught up with Alohaii to share with us exclusively on the content direction of the album, overall insights on the production, and expectations for fans as well. Overall Theme")
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
    Card1Details()
}



