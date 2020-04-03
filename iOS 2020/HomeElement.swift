//
//  HomeElement.swift
//  iOS 2020
//
//  Created by Christian Calderón on 12/03/20.
//  Copyright © 2020 Christian Calderón. All rights reserved.
//

import Foundation

struct HomeElement: Codable {
    let id: Int?
    let homeName: String?
    let logoURL: String?
    let waitlist: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case homeName = "name"
        case logoURL = "logo_url"
        case waitlist
    }
}
