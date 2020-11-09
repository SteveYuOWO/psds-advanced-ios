//
//  MajorDataStore.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

class MajorDataStore: ObservableObject {
    @Published var majorData: [Major] = []
    
    init() {
        getMajors()
    }
    
    func getMajors() {
        MajorApi().getMajors(completion: {majorData in
            self.majorData = majorData
        })
    }
}

