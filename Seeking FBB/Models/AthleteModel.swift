//
//  AthleteModel.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 6/19/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import Foundation
import SwiftUI

struct AthleteModel: Codable { //, Hashable, Identifiable {
    let id: Int
    let name: String
    let dateOfBirth: String
    let state: String
    let city: String
    let imageName: String
    let isFavorite: Bool
}

extension AthleteModel {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
