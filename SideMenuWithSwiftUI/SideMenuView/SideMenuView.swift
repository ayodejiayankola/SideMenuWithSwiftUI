//
//  SideMenuView.swift
//  SideMenuWithSwiftUI
//
//  Created by Ayankola Ayodeji  on 21/05/2021.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isSideShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isSideShowing: $isSideShowing)
                    .frame(height: 180)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) {
                    option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        })
                }
                Spacer()
                
                // Cell Items
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isSideShowing: .constant(true))
    }
}
