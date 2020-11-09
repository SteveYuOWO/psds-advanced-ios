//
//  TeacherDataStore.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

class TeacherDataStore: ObservableObject {
    @Published var teacherData: [Teacher] = []
    
    init() {
        getTeachers()
    }
    
    func getTeachers() {
        TeacherApi().getTeachers(completion: {teacherData in
            self.teacherData = teacherData
        })
    }
}
