//
//  SIdeMenuHeaderView.swift
//  SideMenuWithSwiftUI
//
//  Created by Ayankola Ayodeji  on 21/05/2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isSideShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isSideShowing.toggle()
                }
                
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("user")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Edict Farma")
                    .font(.system(size: 20, weight: .semibold))
                Text("@venom")
                    .font(.system(size: 14))
                    .padding(.bottom, 1)
                
                HStack {
                    HStack {
                        Text("1,300")
                            .font(.system(size: 13, weight: .semibold))
                        Text("Following")
                            .font(.system(size: 13, weight: .semibold))
                    }
                    
                    HStack {
                        Text("400")
                            .font(.system(size: 13, weight: .semibold))
                        Text("Followers")
                            .font(.system(size: 13, weight: .semibold))
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isSideShowing: .constant(true))
    }
}
