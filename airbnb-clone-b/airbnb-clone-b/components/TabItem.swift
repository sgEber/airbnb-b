//
//  TabItem.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct TabItem: View {
    var text: String
    var image: String
        
    var body: some View {
        VStack {
            Text(text)
            Image(image)
                .renderingMode(.template)
        }
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        TabItem(text: "Explore", image: "magnifing")
    }
}
