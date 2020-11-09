//
//  HomeView.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/10/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            StudentManageView().tabItem {
                Image(systemName: "person.3.fill")
                Text("学生管理")
            }
            TeacherManageView().tabItem({
                Image(systemName: "person.fill")
                Text("教师管理")
            })
            AdminManageView().tabItem({
                Image(systemName: "person.crop.circle")
                Text("管理员管理")
            })
            MajorManageView().tabItem({
                Image(systemName: "book")
                Text("专业管理")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

