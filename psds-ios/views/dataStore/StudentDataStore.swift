//
//  StudentDataStore.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import Foundation

class StudentDataStore: ObservableObject {
    @Published var studentData: [Student] = []
    
    init() {
        getStudents()
    }
    
    func getStudents() {
        StudentApi().getStudent(completion: {studentData in
            self.studentData = studentData
        })
    }
}
