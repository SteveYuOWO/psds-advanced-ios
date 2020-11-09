//
//  TitleView.swift
//  psds-ios
//
//  Created by Steve Yu on 2020/10/19.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    @State var showProfile = false
    @State var menuViewState = CGSize.zero
    
    var body: some View {
        ZStack {
            MenuView(percent: 80)
                .offset(y: showProfile ? 0: screen.height)
                .offset(menuViewState)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.menuViewState = value.translation
                            if self.menuViewState.height < -20 {
                                self.menuViewState.height = -20
                            }
                            if self.menuViewState.height > 20 {
                                self.showProfile = false
                            }
                        })
                        .onEnded({ value in
                            self.menuViewState = .zero
                        })
                )
            
            VStack {
                HStack {
                    Text(title)
                        .font(.system(size: 25))
                        .bold()
                        .padding(.horizontal)
                        .padding(.leading, 15)
                        
                    
                    Spacer()
                    Button(action: {
                        self.showProfile.toggle()
                    }) {
                        Image("Avatar-1")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }
                    .padding()
                    .padding(.trailing, 15)
                }
                Spacer()
            }
        }
    }
}


struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "标题Title")
    }
}
