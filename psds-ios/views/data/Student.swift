//
//  Student.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

struct Student: Codable, Identifiable {
    var id: Int
    var name: String
    var sex: String
    var stuNum: String
    var email: String
    var major: String
    var info: String
    var password: String
}
