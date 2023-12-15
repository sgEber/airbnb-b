//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical) {
            
            VStack(alignment: .leading, spacing: 10) {
                
                // Infomración personal
                Image("pochita")
                    .clipShape(Circle())
                Text("Hi I'm Eber")
                    .font(.title2)
                Text("Joined in 2023")
                    .foregroundStyle(.gray)
                
                //Corte de linea
                Divider()
                    .padding(.vertical)
                
                
                VStack(alignment: .leading, spacing: 20) {
                    Image(systemName: "checkmark.shield.fill")
                    Text("Identity verification")
                        .font(.title3)
                    Text("Show others you're really you with the identity verification badge")
                    Button {
                        
                    } label: {
                        Text("Get the badge")
                            .padding()
                            .foregroundStyle(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.black)
                            )
                    }
                }
                //Corte de linea
                Divider()
                    .padding(.vertical)
                
                HStack {
                    Image(systemName: "contextualmenu.and.cursorarrow")
                    Text("Some info is shown in its orginal language.")
                    
                }
                Text("Matt confirmed")
                    .font(.title2)
                    .padding(.top)
                    .fontWeight(.semibold)
                
                //Corte de linea
                Divider()
                    .padding(.vertical)
                
                HStack {
                    Image(systemName: "checkmark")
                    Text("Phone Number")
                }
                
            }.padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
