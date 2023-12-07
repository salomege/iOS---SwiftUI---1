//
//  PersonsData.swift
//  iOS-SwiftUI-1
//
//  Created by salome on 07.12.23.
//

import SwiftUI

struct PersonsData: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let comment: String
    let time: String
    
}

struct PersonsDataList {
    static let topTen = [
        PersonsData(imageName: "Avatar",
                    name: "Francisco MIles",
                    comment: "I Went There Yesterday",
                    time: "18:14"),
        
        PersonsData(imageName: "Avatar-2",
                    name: "Arlene Fisher",
                    comment: "IDK what else is there to do",
                    time: "22:31"),
        
        PersonsData(imageName: "Avatar-3",
                    name: "Darlene Hawkins",
                    comment: "No, I can't come tomorrow",
                    time: "09:18"),
        
        PersonsData(imageName: "Avatar-4",
                    name: "Eduardo Mckinney",
                    comment: "Go to hell",
                    time: "Yesterday"),
        
        PersonsData(imageName: "Avatar-5",
                    name: "Aubrey Cooper",
                    comment: "I hope it goes well",
                    time: "Friday"),
        
        PersonsData(imageName: "Avatar-6",
                    name: "Jorge Nguyen",
                    comment: "So what's your plan this weekend?",
                    time: "Thursday"),
        
        PersonsData(imageName: "Avatar-7",
                    name: "Cody Cooper",
                    comment: "What the progress on that task?",
                    time: "Tuesday"),
        
        PersonsData(imageName: "Avatar-8",
                    name: "Kristin Pena",
                    comment: "Yeah! You are right!",
                    time: "7/22/20"),
        
        PersonsData(imageName: "Avatar-9",
                    name: "Brandie Watson",
                    comment: "I was there yesterday",
                    time: "8/19/20"),
        
        PersonsData(imageName: "Avatar-10",
                    name: "Stella Henry",
                    comment: "Martinique",
                    time: "9/1520"),
    ]
}
