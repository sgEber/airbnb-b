//
//  Card.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct Card: View {
    
    let place: Place
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AsyncImage(url: URL(string: place.image_url)) { image in
                    image
                     .resizable()
                     .cornerRadius(16)
                     .frame(width: 338, height: 320)
                   
            } placeholder: {
                ProgressView()
            }
            HStack {
                Text("\(place.location.city), \(place.location.country)")
                    .fontWeight(.bold)
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                                .font(.system(size: 11))
                            Text(String(format: "%.1f", place.rating))
                     }
            }
            
            Text(place.name)
                .fontWeight(.light)
                .foregroundStyle(.gray)
                
            Text(place.date)
                .fontWeight(.light)
                .foregroundStyle(.gray)
               
            Text(String(format: "$%.2f total", place.price))
                           .fontWeight(.semibold)
        }
        .padding()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(place: Place(
            name: " ",
            rating: 4.5,
            location: Location(country: " ", city: " "),
            image_url: " ",
            date: " ",
            price: 120.99
        ))
    }
}
