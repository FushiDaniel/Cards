//
//  ContentView.swift
//  Cards
//
//  Created by Aiman Daniel on 03/07/2024.
//

//Im struggling with the card, as i did below, i declared Namespace for every card, then i call the card by using Card2(), how can i use a foreach loop instead of declaring each card manually.

import SwiftUI

struct ContentView: View {
    @Namespace private var namespace
    @Namespace private var namespace2
    
    var body: some View {
        NavigationStack{
                ScrollView{
                    NavigationLink {
                        card1Details
                            .navigationTransition(.zoom(sourceID: "zoom", in: namespace))
                    } label: {
                        Card1()
                            .matchedTransitionSource(id: "zoom", in: namespace)
                    }
                    NavigationLink {
                        card2Details
                            .navigationTransition(.zoom(sourceID: "zoom", in: namespace2))
                        
                    } label: {
                        Card2()
                            .matchedTransitionSource(id: "zoom", in: namespace2)
                            .padding(.top)
                    }
                }
        }
        }
    }

    
    private var card1Details: some View{
        GeometryReader { proxy in
            Card1Details()
        }
        .ignoresSafeArea()
    }

private var card2Details: some View{
    GeometryReader { proxy in
        Card2Details()
    }
    .ignoresSafeArea()
}


#Preview {
    ContentView()
}

