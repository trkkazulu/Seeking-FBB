//
//  AthleteModel.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 6/19/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import Foundation
import SwiftUI

struct AthleteModel: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var dateOfBirth: String
    var state: String
    var city: String
    var imageName: String
    var isFavorite: Bool
}

extension AthleteModel {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
