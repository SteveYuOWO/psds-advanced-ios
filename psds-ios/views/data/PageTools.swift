//
//  PageTools.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

struct Sort: Codable {
    var sorted: Bool
    var unsorted: Bool
    var empty: Bool
}

struct Pageable: Codable {
    var sort: Sort
    var pageNumber: Int
    var pageSize: Int
    var offset: Int
    var paged: Bool
    var unpaged: Bool
}

struct PageData<T:Codable>: Codable {
    var content: [T]
    var pageable: Pageable
    var totalPages: Int
    var totalElements: Int
    var last: Bool
    var sort: Sort
    var number: Int
    var numberOfElements: Int
    var first: Bool
    var size: Int
    var empty: Bool
}
