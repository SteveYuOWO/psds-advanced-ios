//
//  MenuVIew.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/10/19.
//

import SwiftUI

struct MenuView: View {
    var percent:CGFloat = 80
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                Text("SteveYu 信息完善度-\(Int(percent))% ")
                    .font(.caption)
                    .padding(.top, 20)
                Color.white.frame(width: percent, height: 6)
                    .cornerRadius(3)
                    .frame(width: 100, height: 6, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 130, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
                MenuRow(title: "账户信息", icon: "gear")
                MenuRow(title: "注销登录", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.4869104028, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
        }.padding(.bottom, 30)
    }
}

struct MenuRow: View {
    var title: String
    var icon: String
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light, design: .default))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 100, alignment: .leading)
        }.padding(10)
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
