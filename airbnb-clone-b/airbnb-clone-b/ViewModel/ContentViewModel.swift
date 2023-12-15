//
//  ContentViewModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 1/12/23.
//

import Foundation
import MapKit

class ContentViewModel: ObservableObject {
    @Published var annotations: [PlaceCoordinate] = []

    func loadData() async {
        guard let url = URL(string: "https://airbnb-api-b-five.vercel.app/airbnb") else {
            print("Invalid URL")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let airbnbData = try? JSONDecoder().decode(Airbnb.self, from: data) {
                DispatchQueue.main.async {
                    self.createAnnotations(from: airbnbData.places)
                }
            }
        } catch {
            print(error.localizedDescription)
        }
    }

    private func createAnnotations(from places: [Place]) {
        annotations = places.compactMap { place in
            guard let latitude = Double(place.location.latitude),
                  let longitude = Double(place.location.longitude) else { return nil }
            return PlaceCoordinate(name: place.name, coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
        }
    }

    init() {
        Task {
            await loadData()
        }
    }
}
