//
//  List.swift
//  iOS-SwiftUI-1
//
//  Created by salome on 07.12.23.
//

import SwiftUI

struct TableView: View {
    
    @State var person: [PersonsData] = PersonsDataList.topTen
    @State private var showMessage = false
    
    var body: some View {
        NavigationView {
            
            List(person, id: \.id) { personData in
                ScrollView {
                    HStack {
                        Image(personData.imageName)
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                        VStack (spacing: 4){
                            Text(personData.name)
                                .font(.system(size:20))
                            Text(personData.comment)
                                .font(.system(size:12))
                                .foregroundColor(.secondary)
                            
                        }
                        Spacer()
                        Text(personData.time)
                            .font(.system(size:12))
                            .foregroundColor(.secondary)
                    }
                }
                
                .navigationTitle("Chat")
                .navigationBarTitleDisplayMode(.inline)
                .accentColor(.white)
                
            }
            
        }
        HStack(spacing: 10) {
            Button(action: {
                showMessage = true
                person.removeAll()
            }, label: {
                Text("Clear Chat")
                    .font(.system(size: 20))
                
            })
            .foregroundColor(.white)
            .frame(width:150, height: 45)
            .background(Color(red: 36/255, green: 39/255, blue:96/255))
            .cornerRadius(6)
            .alert(isPresented: $showMessage) {
                Alert(title: Text("Data is removed"))
            }
            Button(action: {
                person = PersonsDataList.topTen
            }, label: {
                Text("Restore Chat")
                    .font(.system(size: 20))
                
            })
            .foregroundColor(.white)
            .frame(width:150, height: 45)
            .background(Color(red: 36/255, green: 39/255, blue:96/255))
            .cornerRadius(6)
            
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}





#Preview {
    TableView()
}
