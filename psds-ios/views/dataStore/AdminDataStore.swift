//
//  AdminDataStore.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

class AdminDataStore: ObservableObject {
    @Published var adminData: [Admin] = []
    
    init() {
        getAdmins()
    }
    
    func getAdmins() {
        AdminApi().getAdmins(completion: {adminData in
            self.adminData = adminData
        })
    }
}

