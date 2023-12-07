//
//  ContentView.swift
//  iOS-SwiftUI-1
//
//  Created by salome on 06.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            
            VStack(spacing:16) {
               
                Image ("Ellipse 2")
                    .frame(width: 166, height: 170)
                Spacer()
                Text ("Name")
                    .bold()
                    .font(.system(size:16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Test",  text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text ("Email")
                    .bold()
                    .font(.system(size:16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Test@gmail.com",  text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text ("Password")
                    .bold()
                    .font(.system(size:16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("********",  text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text ("Date of Birth")
                    .bold()
                    .font(.system(size:16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("31/02/2000",  text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text ("Country / Region")
                    .bold()
                    .font(.system(size:16))
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Georgia",  text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Save Change")
                        .font(.system(size: 20))
                    
                        
                })
                .foregroundColor(.white)
                
                .frame(width:224, height: 45)
                .background(Color(red: 36/255, green: 39/255, blue:96/255))
                .cornerRadius(6)
            }
            .padding([.leading, .trailing], 24)
            
            
           
            .navigationBarItems(leading: Image(systemName: "chevron.backward"))
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            
            
            }
        
        }
    }

#Preview {
    ContentView()
}
