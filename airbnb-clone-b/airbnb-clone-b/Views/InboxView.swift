//
//  InboxView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct InboxView: View {
    @State private var cardNumber: String = "5445 5543 1234 9089"
        @State private var expiration: String = ""
        @State private var cvv: String = ""
        @State private var postCode: String = ""
        @State private var countryRegion: String = "United Kingdom"

        var body: some View {
            NavigationStack {
                
                Form{
                    
                    Section() {
                        HStack{
                            Image("visa")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .font(.system(size: 28))
                            Image("amex")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .font(.system(size: 28))
                            Image("mastercard")
                                .resizable()
                                .frame(width: 38, height: 22)
                                .font(.system(size: 28))
                            Image("discover")
                                .resizable()
                                .frame(width: 49, height: 40)
                                .font(.system(size: 28))
                            
                        }
                        
                        HStack{
                            VStack{
                                HStack{
                                    Text("Card Number").foregroundColor(.red)
                                    Image(systemName: "lock.fill").foregroundColor(.red)
                                    Image(systemName: "exclamationmark.circle")
                                        .foregroundColor(.red)
                                    Spacer()
                                }.foregroundColor(.primary)
                                TextField("Card number", text: $cardNumber)
                                    .keyboardType(.numberPad)
                            }
                            Image("mastercard")
                                .resizable()
                                .frame(width: 38, height: 22)
                                .font(.system(size: 28))
                    
                        }
                        
                        HStack {
                            TextField("MM/YY", text: $expiration)
                            TextField("CVV", text: $cvv)
                                .keyboardType(.numberPad)
                        }
                        HStack{
                            Image(systemName: "exclamationmark.circle").foregroundColor(.red)
                            Text("Check your card number")
                                .foregroundColor(.red)
                        }
                        TextField("Post Code", text: $postCode)
                        Picker("Country/Region", selection: $countryRegion) {
                            Text("United Kingdom").tag("United Kingdom")
                                
                        }
                        HStack{
                            Button("Cancel"){
                            
                            }
                            Spacer()
                            Button("Done") {
                            }
                        }
                    }
                    
                }
                .navigationTitle("Add Card Details")
                .navigationBarTitleDisplayMode(.inline)
                
                
            }
        }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
