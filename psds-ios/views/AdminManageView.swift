//
//  AdminManageView.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/11/9.
//

import SwiftUI

struct AdminManageView: View {
    @ObservedObject var adminDataStore = AdminDataStore()
    
    var colors = [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]
    
    var cards = [Image("card10")]
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    ForEach(0..<adminDataStore.adminData.count, id: \.self, content: { index in
                        VStack(alignment: .leading, spacing: 10.0) {
                            VStack {
                                HStack(spacing: 30.0) {
                                    Text("管理工号")
                                        .font(.system(size: 18))
                                        .bold()
                                    Text("\(adminDataStore.adminData[index].adminId)")
                                        .font(.system(size: 18))
                                        .bold()
                                }
                            }
                            HStack(spacing: 30.0) {
                                Text("姓名")
                                    .font(.system(size: 18))
                                    .bold()
                                Text("\(adminDataStore.adminData[index].name)")
                                    .font(.system(size: 18))
                                    .bold()
                            }
                            HStack(spacing: 30.0) {
                                Text("性别")
                                    .font(.system(size: 18))
                                    .bold()
                                Text("\(adminDataStore.adminData[index].sex)")
                                    .font(.system(size: 18))
                                    .bold()
                            }
                        }
                        .foregroundColor(.white)
                        .frame(width: screen.width - 20, height: 200, alignment: .center)
                        .background(
                            cards[index % cards.count]
                                .resizable()
                        )
                        .cornerRadius(20)
                        .padding(.vertical, 2)
                    })
                }
            }
            .padding(.top, 70)
            
            TitleView(title: "管理员信息")
        }
    }
}

struct AdminManageView_Previews: PreviewProvider {
    static var previews: some View {
        AdminManageView()
    }
}
