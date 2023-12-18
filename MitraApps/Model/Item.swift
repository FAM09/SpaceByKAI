//
//  Item.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 18/12/23.
//

import Foundation

struct Items: Decodable {
    let items: [Item]
}

struct Item: Decodable, Identifiable {
    let title: String
    let description: String
    let area: String
    let location: String
    let luas: String
    let id: String
}
