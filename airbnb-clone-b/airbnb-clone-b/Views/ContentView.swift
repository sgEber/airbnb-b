//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:50){
                    Category(icon: "ovni", text: "OMG!")
                    Category(icon: "beaches", text: "Beaches")
                    Category(icon: "home", text: "Try Homes")
                    Category(icon: "golf", text: "Golfing")
                    Category(icon: "landscape", text: "Amazing")
                }
            }.padding(.horizontal)
            
            Divider()
            
            List(contentViewModel.airbnbn.places, id: \.name) { place in
                Card(place: place)
            }
            .listStyle(.inset)
            .scrollIndicators(.hidden)
            .task {
                await contentViewModel.loadData()
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
