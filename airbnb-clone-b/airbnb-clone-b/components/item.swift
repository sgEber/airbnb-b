//
//  item.swift
//  airbnb-clone-b
//
//  Created by Alumno on 3/11/23.
//

import SwiftUI

struct item: View {
    
    var PostImage:String
    var TextLocation:String
    var icon:String
    var StarPoints:String
    var host: String
    var fecha: String
    var precio: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(PostImage)
                .frame(width: 342, height: 323)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            HStack{
                Text(TextLocation)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: icon)
                    .font(.system(size: 11))
                Text(StarPoints)
            }
            Text(host)
                .fontWeight(.light)
                .foregroundColor(.gray)
            Text(fecha)
                .fontWeight(.light)
                .foregroundColor(.gray)
            Text(precio)
                .fontWeight(.semibold)
        }
    }
}

struct item_Previews: PreviewProvider {
    static var previews: some View {
        item(PostImage: <#String#>, TextLocation: <#String#>, icon: <#String#>, StarPoints: <#String#>, host: <#String#>, fecha: <#String#>, precio: <#String#>)
    }
}
